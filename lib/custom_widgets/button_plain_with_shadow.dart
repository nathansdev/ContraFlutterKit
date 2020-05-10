import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPlainWithShadow extends StatelessWidget {
  final Color borderColor;
  final Color shadowColor;
  final Color color;
  final String text;
  final VoidCallback callback;

  const ButtonPlainWithShadow(
      {this.borderColor,
      this.shadowColor,
      this.color,
      this.text,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: ButtonTheme(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: wood_smoke, fontSize: 21, fontWeight: FontWeight.w800),
          ),
          padding: EdgeInsets.all(16),
          decoration: ShapeDecoration(
              shadows: [
                BoxShadow(
                  color: shadowColor,
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    4.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
              color: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  side: BorderSide(color: borderColor, width: 2))),
        ),
      ),
    );
  }
}
