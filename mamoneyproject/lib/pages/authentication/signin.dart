import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:mamoneyproject/customWidgets/logoDivision.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      //logotipo mamoney [imagem]
      appBar: AppBar(title: LogoDivision(), backgroundColor: Colors.white,),
      body: Column(
        children: <Widget>[
          SizedBox(height: 50),
          TextInputDivision(),
          //campo de email [texto]
          //campo de senha [texto]
          //botões registrar e entrar [dois botões]
          //botões para logar com google e facebook
          //ícone mamoney [imagem]
        ],
      ),

    );
  }
  
}

class TextInputDivision extends StatelessWidget {
  final logoStyle = ParentStyle()
        ..width(309)
        ..height(50);

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: TextFormField(initialValue: 'Email'),
      style: logoStyle
    );
  }
}