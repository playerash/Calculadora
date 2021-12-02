import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:math_expressions/math_expressions.dart';

part 'calculadora_event.dart';
part 'calculadora_state.dart';

class CalculadoraBloc extends Bloc<CalculadoraEvent, String> {
  String equation = "0";
  String expression = "";
  String result = "0";
  CalculadoraBloc() : super("0") {
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
      equation = result;
      emit(result);
    } catch (e) {
      result = "Erro";
      emit(result);
    }
  }

  _receivedReset(CalculadoraResetEvent event, Emitter emit) {
    equation = "0";
    emit(equation);
  }

  _receivedDelete(CalculadoraDeleteEvent event, Emitter emit) {
    equation = equation.substring(0, equation.length - 1);
    emit(equation);
  }

  _receivedOperator(CalculadoraOperatorEvent event, Emitter emit) {
    if (equation == "0" && event.operator == "X" ||
        equation == "0" && event.operator == "+" ||
        equation == "0" && event.operator == "-" ||
        equation == "0" && event.operator == "÷") {
      equation = "0";
      emit("Digite um número");
    } else {
      equation = equation + event.operator;
      emit(equation);
    }
  }

  _receivedNumber(CalculadoraNumberEvent event, Emitter emit) {
    if (equation == "0") {
      equation = event.number;
      emit(equation);
    } else {
      equation = equation + event.number;
      emit(equation);
    }
  }
}
