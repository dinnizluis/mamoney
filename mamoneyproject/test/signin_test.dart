import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mamoneyproject/pages/authentication/signin.dart';

void main() {
  testWidgets('Teste de construção da tela de login', (WidgetTester tester) async {
    //Build da tela
    await tester.pumpWidget(SignIn());
    
    //Busca por widgets
    expect(find.byKey(Key('loginAppBar')), findsOneWidget);
    expect(find.byKey(Key('loginBody')), findsOneWidget);
    expect(find.byKey(Key('username')), findsOneWidget);
    expect(find.byKey(Key('password')), findsOneWidget);
  });
}
  