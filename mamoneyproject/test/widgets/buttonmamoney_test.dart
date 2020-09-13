import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mamoneyproject/widgets/buttonmamoney.dart';

void main() {
  testWidgets('Testing app component for button', (WidgetTester tester) async {
    //Build da tela
    await tester.pumpWidget(
      MaterialApp(home: ButtonMaMoney(key: Key('MaMoneyButtonKey'), buttonText: 'ButtonTest'))
    );
    
    //Busca por widgets
    expect(find.byKey(Key('MaMoneyButtonKey')), findsOneWidget);
  });
}