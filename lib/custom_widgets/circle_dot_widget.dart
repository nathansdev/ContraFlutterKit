import 'package:flutter/cupertino.dart';

class CircleDotWidget extends StatelessWidget {
  final bool isActive;
  final Color color;
  final Color borderColor;

  const CircleDotWidget(
      {required this.isActive, required this.color, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 14 : 10,
      width: isActive ? 14 : 10,
      decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: borderColor),
          color: color,
          shape: BoxShape.circle),
    );
  }
}
