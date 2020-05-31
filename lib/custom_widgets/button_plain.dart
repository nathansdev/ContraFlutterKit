import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPlain extends StatelessWidget {
  final Color color;
  final Color borderColor;
  final Color textColor;
  final double size;
  final String text;

  const ButtonPlain(
      {this.color, this.textColor, this.borderColor, this.size, this.text});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 48,
      minWidth: size != null ? size : MediaQuery.of(context).size.width,
      child: RaisedButton(
        padding: EdgeInsets.all(16),
        color: color,
        onPressed: () {
          Navigator.pushNamed(context, "/welcome_screen");
        },
        textColor: textColor,
        child: Text(
          text,
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w800),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(16.0)),
      ),
    );
  }
}
