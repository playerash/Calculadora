part of 'calculadora_bloc.dart';

@immutable
abstract class CalculadoraEvent {}

class CalculadoraNumberEvent extends CalculadoraEvent{
  final String number;
  CalculadoraNumberEvent({required this.number});
}
class CalculadoraResetEvent extends CalculadoraEvent{
}

class CalculadoraDeleteEvent extends CalculadoraEvent{

}

class CalculadoraOperatorEvent extends CalculadoraEvent{
  final String operator;
  CalculadoraOperatorEvent({required this.operator});
}

class CalculadoraResultEvent extends CalculadoraEvent{
}

