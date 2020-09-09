import 'package:division/division.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: LogoDivision(), backgroundColor: Colors.white,),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
        children: <Widget>[
          SizedBox(height: 80),
          CrendentialsInputDivision(),
          SizedBox(height: 30),
          AuthButtonsDivision(),
          SizedBox(height: 30),
          PigBottomImage(),
        ],
      ),
      ),
    );
  }
}

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

class CrendentialsInputDivision extends StatelessWidget {
  final textInputStyle = ParentStyle()..width(309);

  InputDecoration getDecoration(String label) {
    return new InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.maMoney, width: 3.0),
        ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.maMoney, width: 3.0),
          borderRadius: BorderRadius.circular(5.0),
      ),
      hintText: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Column(
        children: <Widget>[
          TextFormField(decoration: getDecoration('Email')),
          SizedBox(height: 50),
          TextFormField(decoration: getDecoration('Senha')),
        ]
      ),
      style: textInputStyle
    );
  }
}

class AuthButtonsDivision extends StatelessWidget {
  final authButtonsStyle = ParentStyle()
    ..width(300)
    ..height(38);

  @override
  Widget build(BuildContext context){
    return Parent(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            width: 140,
            child: RaisedButton(
              onPressed: () => {},
              child: Text(
                'Registrar', 
                style: TextStyle(color: Colors.maMoney)
                ), 
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.maMoney, width: 2),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
          SizedBox(
            width: 140,
            child: RaisedButton(
              onPressed: () => {},
              child: Text(
                'Entrar', 
                style: TextStyle(color: Colors.white)
                ), 
              color: Colors.maMoney,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
            ),
          )
        ],
      ),
      style: authButtonsStyle,
    );
  }
}

class PigBottomImage extends StatelessWidget {
  final imgStyle = ParentStyle()
        ..width(538)
        ..height(256);

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Image.asset('assets/maMoneyPig.png'),
      style: imgStyle
    );
  }
}