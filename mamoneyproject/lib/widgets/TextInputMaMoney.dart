import 'package:division/division.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInputMaMoney extends StatelessWidget {
  final textInputStyle = ParentStyle()..width(309);
  final String label;

  TextInputMaMoney({
    Key key, 
    @required this.label,
    }) : super(key: key);

  InputDecoration getDecoration(String label, BuildContext context) {
    return new InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 3.0),
        ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 3.0),
          borderRadius: BorderRadius.circular(5.0),
      ),
      hintText: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: TextFormField(decoration: getDecoration(label, context)),
      style: textInputStyle
    );
  }
}