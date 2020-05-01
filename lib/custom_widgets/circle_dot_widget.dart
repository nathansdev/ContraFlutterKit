import 'package:flutter/cupertino.dart';

class CircleDotWidget extends StatelessWidget {
  final bool isActive;
  final Color color;
  final Color borderColor;

  const CircleDotWidget({this.isActive, this.color, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12.0,
      height: 12.0,
      decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: borderColor),
          color: color,
          shape: BoxShape.circle),
    );
  }
}
