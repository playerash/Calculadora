import 'package:calculadora/app/home_page/bloc/calculadora_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorButton extends StatelessWidget {
  final int buttonHeight;
  final Color buttonColor;
  final String buttonText;
  const CalculatorButton({
    Key? key,
    required this.buttonText,
    required this.buttonHeight,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: TextButton(
          onPressed: () {
            var bloc = BlocProvider.of<CalculadoraBloc>(context);

            if (buttonText == "X" ||
                buttonText == "÷" ||
                buttonText == "-" ||
                buttonText == "+") {
              bloc.add(CalculadoraOperatorEvent(operator: buttonText));
            } else if (buttonText == "=") {
              bloc.add(CalculadoraResultEvent());
            } else if (buttonText == "⌫") {
              bloc.add(CalculadoraDeleteEvent());
            } else if (buttonText == "C") {
              bloc.add(CalculadoraResetEvent());
            } else {
              bloc.add(CalculadoraNumberEvent(number: buttonText));
            }
          },
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
            ),
          )),
    );
  }
}
