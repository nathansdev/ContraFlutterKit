import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class RoundImageWithText extends StatelessWidget {
  final Color borderColor;
  final Color shadowColor;
  final Color color;
  final String text;
  final double size;

  const RoundImageWithText({
    this.borderColor,
    this.shadowColor,
    this.color,
    this.size,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: ShapeDecoration(
          color: color,
          shape: CircleBorder(side: BorderSide(color: borderColor, width: 2))),
      child: Center(
          child: Text(
        text,
        style:
            TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: white),
      )),
    );
  }
}
