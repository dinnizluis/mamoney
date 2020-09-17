import 'package:flutter/material.dart';

class ButtonMaMoney extends StatelessWidget {
  final String buttonText;
  final Color buttonTextColor;
  final Color buttonColor;

  ButtonMaMoney({
    Key key,
    @required this.buttonText,
    this.buttonTextColor,
    this.buttonColor,
  }) : super(key: key);

  Color getButtonTextColor(BuildContext context) {
    return buttonTextColor ?? Theme.of(context).primaryColor;
  }

  Color getButtonColor(BuildContext context) {
    return buttonColor ?? Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Material(
        child: RaisedButton(
          onPressed: () => {},
          child: Text(buttonText,
              style: TextStyle(color: getButtonTextColor(context))),
          color: getButtonColor(context),
          shape: RoundedRectangleBorder(
              side: BorderSide(color: getButtonTextColor(context), width: 2),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
