import 'package:division/division.dart';
import 'package:flutter/material.dart';

class LogoDivision extends StatelessWidget {
  final logoStyle = ParentStyle()
        ..width(278)
        ..height(179);

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Image.asset('assets/maMoneyLogotipo.png'),
      style: logoStyle
    );
  }
  
}