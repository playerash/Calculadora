// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:calculadora/app/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:calculadora/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget( MaterialApp(
      home: HomePage(),
    ));

    // Verificando se tem todos os digitos da calculadora.
    expect(find.text("0"), findsWidgets);
    expect(find.text("1"), findsOneWidget);
    expect(find.text('2'), findsOneWidget);
    expect(find.text('3'), findsOneWidget);
    expect(find.text('4'), findsOneWidget);
    expect(find.text('5'), findsOneWidget);
    expect(find.text('6'), findsOneWidget);
    expect(find.text('7'), findsOneWidget);
    expect(find.text('8'), findsOneWidget);
    expect(find.text('9'), findsOneWidget);
    expect(find.text('00'), findsOneWidget);
    expect(find.text('C'), findsOneWidget);
    expect(find.text('⌫'), findsOneWidget);
    expect(find.text('÷'), findsOneWidget);
    expect(find.text('x'), findsOneWidget);
    expect(find.text('-'), findsOneWidget);
    expect(find.text('='), findsOneWidget);
    expect(find.text('.'), findsOneWidget);

  });
}
