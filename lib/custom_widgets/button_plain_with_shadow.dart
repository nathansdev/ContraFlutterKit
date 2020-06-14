import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPlainWithShadow extends StatelessWidget {
  final Color borderColor;
  final Color shadowColor;
  final Color color;
  final Color textColor;
  final String text;
  final VoidCallback callback;
  final double size;
  final double height;

  const ButtonPlainWithShadow(
      {this.borderColor,
      this.shadowColor,
      this.color,
      this.textColor,
      this.text,
      this.size,
      this.height,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        width: size != null ? size : MediaQuery.of(context).size.width,
        height: height != null ? height : 48,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: textColor != null ? textColor : wood_smoke,
                fontSize: 21,
                fontWeight: FontWeight.w800),
          ),
        ),
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
    );
  }
}
