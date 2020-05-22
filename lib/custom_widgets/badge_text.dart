import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class BadgeText extends StatelessWidget {
  final Color color;
  final String text;
  final double size;

  const BadgeText({
    this.color,
    this.text,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      decoration: ShapeDecoration(
          color: color,
          shape: CircleBorder(side: BorderSide(color: color, width: 2))),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: white, fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ),
    );
  }
}
