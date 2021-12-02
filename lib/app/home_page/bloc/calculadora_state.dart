part of 'calculadora_bloc.dart';

@immutable
abstract class CalculadoraState {}

class CalculadoraInitial extends CalculadoraState {
  final String result = "0";
}

class CalculadoraTyping extends CalculadoraState {
  final String result;
  CalculadoraTyping({required this.result});
}

class CalculadoraResult extends CalculadoraState {
  final String result;
  CalculadoraResult({required this.result});
}