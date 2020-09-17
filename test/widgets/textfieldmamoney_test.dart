import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mamoney/widgets/textfieldmamoney.dart';

void main() {
  testWidgets('Testing app component for text input',
      (WidgetTester tester) async {
    //Build da tela
    await tester.pumpWidget(MaterialApp(
        home:
            TextFieldMaMoney(key: Key('TextFieldMaMoneyKey'), label: 'Test')));

    //Busca por widgets
    expect(find.byKey(Key('TextFieldMaMoneyKey')), findsOneWidget);
  });
}
