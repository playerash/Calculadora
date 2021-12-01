import 'package:calculadora/app/home_page/components/calculator_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora"),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              "0",
              style: TextStyle(
                fontSize: 38,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text(
              "0",
              style: TextStyle(
                fontSize: 48,
              ),
            ),
          ),
          const Expanded(child: Divider()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .75,
                child: Table(
                  children: const [
                    TableRow(children: [
                      CalculatorButton(
                        buttonText: "C",
                        buttonHeight: 1,
                        buttonColor: Colors.redAccent,
                      ),
                       CalculatorButton(
                        buttonText: "⌫",
                        buttonHeight: 1,
                        buttonColor: Colors.blue,
                      ),
                       CalculatorButton(
                        buttonText: "÷",
                        buttonHeight: 1,
                        buttonColor: Colors.redAccent,
                      ),
                    ]),
                    TableRow(children: [
                      CalculatorButton(
                        buttonText: "7",
                        buttonHeight: 1,
                        buttonColor: Colors.grey,
                      ),
                       CalculatorButton(
                        buttonText: "8",
                        buttonHeight: 1,
                        buttonColor: Colors.grey,
                      ),
                       CalculatorButton(
                        buttonText: "9",
                        buttonHeight: 1,
                        buttonColor: Colors.grey,
                      ),
                    ]),
                    TableRow(children: [
                      CalculatorButton(
                        buttonText: "4",
                        buttonHeight: 1,
                        buttonColor: Colors.grey,
                      ),
                       CalculatorButton(
                        buttonText: "5",
                        buttonHeight: 1,
                        buttonColor: Colors.grey,
                      ),
                       CalculatorButton(
                        buttonText: "6",
                        buttonHeight: 1,
                        buttonColor: Colors.grey,
                      ),
                    ]),
                    TableRow(children: [
                      CalculatorButton(
                        buttonText: "1",
                        buttonHeight: 1,
                        buttonColor: Colors.grey,
                      ),
                       CalculatorButton(
                        buttonText: "2",
                        buttonHeight: 1,
                        buttonColor: Colors.grey,
                      ),
                       CalculatorButton(
                        buttonText: "3",
                        buttonHeight: 1,
                        buttonColor: Colors.grey,
                      ),
                    ]),
                    TableRow(children: [
                      CalculatorButton(
                        buttonText: ".",
                        buttonHeight: 1,
                        buttonColor: Colors.grey,
                      ),
                       CalculatorButton(
                        buttonText: "0",
                        buttonHeight: 1,
                        buttonColor: Colors.grey,
                      ),
                       CalculatorButton(
                        buttonText: "00",
                        buttonHeight: 1,
                        buttonColor: Colors.grey,
                      ),
                    ]),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: const [
                    TableRow(children: [
                      CalculatorButton(
                        buttonText: "x",
                        buttonHeight: 1,
                        buttonColor: Colors.grey,
                      ),]),
                      TableRow(children: [
                      CalculatorButton(
                        buttonText: "-",
                        buttonHeight: 1,
                        buttonColor: Colors.grey,
                      ),]),
                      TableRow(children: [
                      CalculatorButton(
                        buttonText: "+",
                        buttonHeight: 1,
                        buttonColor: Colors.grey,
                      ),]),
                      TableRow(children: [
                      CalculatorButton(
                        buttonText: "=",
                        buttonHeight: 2,
                        buttonColor: Colors.grey,
                      ),]),
                       
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
