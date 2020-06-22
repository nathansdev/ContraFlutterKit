import 'dart:math';

import 'package:flutter/material.dart';

class CircularPosition extends StatefulWidget {
  final double radius;
  final double angle;
  final Widget child;

  CircularPosition({
    this.angle,
    this.child,
    this.radius,
  });

  @override
  CircularPositionState createState() {
    return new CircularPositionState();
  }
}

class CircularPositionState extends State<CircularPosition> {
  @override
  Widget build(BuildContext context) {
    final x = cos(widget.angle) * widget.radius;
    final y = sin(widget.angle) * widget.radius;

    return Transform(
      transform: new Matrix4.translationValues(x, y, 0.0),
      child: widget.child,
    );
  }
}
