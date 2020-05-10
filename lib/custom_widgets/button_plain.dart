import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPlain extends StatelessWidget {
  final Color color;
  final Color borderColor;
  final Color textColor;

  const ButtonPlain({this.color, this.textColor, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: MediaQuery.of(context).size.width,
      child: RaisedButton(
        padding: EdgeInsets.all(16),
        color: color,
        onPressed: () {
          Navigator.pushNamed(context, "/welcome_screen");
        },
        textColor: textColor,
        child: Text(
          "Get Started",
          style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(16.0)),
      ),
    );
  }
}
