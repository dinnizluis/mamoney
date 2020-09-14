import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mamoney/pages/authentication/signin.dart';

void main() {
  testWidgets('Build login page', (WidgetTester tester) async {
    //Build da tela
    await tester.pumpWidget(
      MaterialApp(home: SignIn(key: Key('SingInPage')))
    );
    
    //Busca por widgets
    expect(find.byKey(Key('SingInPage')), findsOneWidget);
    expect(find.byKey(Key('loginAppBar')), findsOneWidget);
    expect(find.byKey(Key('loginBody')), findsOneWidget);
    expect(find.byKey(Key('usernameForm')), findsOneWidget);
    expect(find.byKey(Key('passwordForm')), findsOneWidget);
    expect(find.byKey(Key('bottomLogoImg')), findsOneWidget);
  });
}
  