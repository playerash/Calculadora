import 'package:flutter/material.dart';

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
          onPressed: () {},
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
            ),
          )),
    );
  }
}
