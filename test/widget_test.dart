import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_testing/main.dart';

void main() {
  testWidgets('FindsOneWidget : TextField', (widgetTester) async {
    // setup
    await widgetTester.pumpWidget(MyApp());
    // do
    var textField = find.byType(TextField);
    // expect
    expect(textField, findsOneWidget);
  });

  testWidgets('FindsNWidgets : More than One TextField', (widgetTester) async {
    // setup
    await widgetTester.pumpWidget(MyApp());
    // do
    var textField = find.byType(TextField);
    // expect
    expect(textField, findsNWidgets(2));
  });

  testWidgets('FindsNothing : Make sure TextField isn\'t exist',
      (widgetTester) async {
    // setup
    await widgetTester.pumpWidget(MyApp());
    // do
    var textField = find.byType(TextField);
    // expect
    expect(textField, findsNothing);
  });

  testWidgets('reverse a string', (widgetTester) async {
    // setup
    await widgetTester.pumpWidget(MyApp());
    // do
    var textField = find.byType(TextField);
    // expect
    expect(textField, findsOneWidget);

    await widgetTester.enterText(textField, 'Hello World');
    expect(find.text('Hello World'), findsOneWidget);

    var button = find.text('Reverse');
    expect(button, findsOneWidget);

    await widgetTester.tap(button);
    await widgetTester.pump();
    expect(find.text('dlroW olleH'), findsOneWidget);
  });
}
