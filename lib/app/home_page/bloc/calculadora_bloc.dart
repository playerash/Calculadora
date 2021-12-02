import 'package:bloc/bloc.dart';
import 'package:math_expressions/math_expressions.dart';

part 'calculadora_event.dart';

class CalculadoraBloc extends Bloc<CalculadoraEvent, List<String>> {
  String equation = "0";
  String expression = "";
  String result = "0";
  late List<String> list;

  CalculadoraBloc() : super(["0", "0"]) {
    on<CalculadoraNumberEvent>(_receivedNumber);
    on<CalculadoraResetEvent>(_receivedReset);
    on<CalculadoraDeleteEvent>(_receivedDelete);
    on<CalculadoraOperatorEvent>(_receivedOperator);
    on<CalculadoraResultEvent>(_receivedResult);
  }

  _receivedResult(CalculadoraResultEvent event, Emitter emit) {
    expression = equation;
    expression = equation.replaceAll("X", "*");
    expression = expression.replaceAll('÷', "/");
    try {
      Parser parser = Parser();
      Expression exp = parser.parse(expression);
      ContextModel contextModel = ContextModel();
      result = "${exp.evaluate(EvaluationType.REAL, contextModel)}";
      //equation = result;
      list = [equation, result];
      emit(list);
    } catch (e) {
      result = "Erro";
      list = [equation, result];
      emit(list);
    }
  }

  _receivedReset(CalculadoraResetEvent event, Emitter emit) {
    equation = "0";
    result = "0";
    list = [equation, result];
    emit(list);
  }

  _receivedDelete(CalculadoraDeleteEvent event, Emitter emit) {
    if (equation == "") {
      print("foi");
      equation = "0";
      list = [equation, result];
      emit(list);
    } else {
      equation = equation.substring(0, equation.length - 1);
      list = [equation, result];
      emit(list);
    }
  }

  _receivedOperator(CalculadoraOperatorEvent event, Emitter emit) {
    if (equation == "0" && event.operator == "X" ||
        equation == "0" && event.operator == "+" ||
        equation == "0" && event.operator == "-" ||
        equation == "0" && event.operator == "÷") {
      equation = "0";
      list = ["Digite um número", result];
      emit(list);
    } else {
      equation = equation + event.operator;
      list = [equation, result];
      emit(list);
    }
  }

  _receivedNumber(CalculadoraNumberEvent event, Emitter emit) {
    if (equation == "0") {
      equation = event.number;
      list = [equation, result];
      emit(list);
    } else {
      equation = equation + event.number;
      list = [equation, result];
      emit(list);
    }
  }
}
