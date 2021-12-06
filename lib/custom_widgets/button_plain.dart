import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPlain extends StatelessWidget {
  final Color color;
  final Color borderColor;
  final Color textColor;
  final double? size;
  final String text;
  final VoidCallback onTap;
  final double? height;
  final double? textSize;

  const ButtonPlain(
      {required this.color,
      required this.textColor,
      required this.borderColor,
      this.size,
      required this.text,
      this.height,
      this.textSize,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: height != null ? height! : 48,
      minWidth: size != null ? size! : MediaQuery.of(context).size.width,
      child: RaisedButton(
        padding: EdgeInsets.all(16),
        color: color,
        onPressed: onTap,
        textColor: textColor,
        child: Text(
          text,
          maxLines: 1,
          style: TextStyle(
              fontSize: textSize != null ? textSize : 12,
              fontWeight: FontWeight.w800),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(16.0)),
      ),
    );
  }
}
