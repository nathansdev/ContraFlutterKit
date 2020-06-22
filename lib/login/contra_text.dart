import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class ContraText extends StatelessWidget {
  final Alignment alignment;
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  const ContraText(
      {this.alignment, this.text, this.size, this.color, this.weight});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Text(
        text,
        maxLines: 1,
        style: TextStyle(
            fontSize: size == null ? 36 : size,
            fontWeight: weight != null ? weight : FontWeight.w800,
            color: color != null ? color : black),
      ),
    );
  }
}
