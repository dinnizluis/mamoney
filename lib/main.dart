import 'package:flutter/material.dart';
import 'package:mamoney/pages/authentication/signin.dart';

void main() {
  runApp(MaMoneyApp());
}

class MaMoneyApp extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaMoney',
      theme: ThemeData(
          primaryColor: Color(0xff780444),
          primaryColorLight: Color(0xffab3f6f),
          primaryColorDark: Color(0xff47001d),
          fontFamily: 'Red Hat Display',
          brightness: Brightness.light,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: SignIn(key: Key('loginPage')),
    );
  }
}
