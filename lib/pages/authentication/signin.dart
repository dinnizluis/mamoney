import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:mamoney/widgets/buttonmamoney.dart';
import 'package:mamoney/widgets/textfieldmamoney.dart';

class SignIn extends StatelessWidget {
  SignIn({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(key: Key('loginAppBar'), title: LogoMaMoney(), backgroundColor: Colors.white,),
      body: Align(
        key: Key('loginBody'),
        alignment: Alignment.topCenter,
        child: Column(
        children: <Widget>[
          SizedBox(height: 80),
          TextFieldMaMoney(key: Key('usernameForm'), label: 'Email'),
          SizedBox(height: 50),
          TextFieldMaMoney(key: Key('passwordForm'), label: 'Senha'),
          SizedBox(height: 30),
          AuthButtonsDivision(key: Key('buttonsContainer')),
          SizedBox(height: 50),
          PigBottomImage(key: Key('bottomLogoImg')),
        ],
      ),
      ),
    );
  }
}

class LogoMaMoney extends StatelessWidget {
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

class AuthButtonsDivision extends StatelessWidget {
  final authButtonsStyle = ParentStyle()
    ..width(300)
    ..height(38);

  AuthButtonsDivision({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Parent(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ButtonMaMoney(
            key: Key('registerButton'), 
            buttonText: 'Registrar',
            buttonTextColor: Theme.of(context).primaryColor,
            buttonColor: Colors.white
          ),
          ButtonMaMoney(
            key: Key('signInButton'), 
            buttonText: 'Entrar',
            buttonTextColor: Colors.white,
            buttonColor: Theme.of(context).primaryColor
          )
        ],
      ),
      style: authButtonsStyle,
    );
  }
}

class PigBottomImage extends StatelessWidget {
  final imgStyle = ParentStyle()
        ..width(438)
        ..height(130);

  PigBottomImage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Image.asset('assets/maMoneyPig.png'),
      style: imgStyle
    );
  }
}