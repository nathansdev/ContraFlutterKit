import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/material.dart';

class CircularListItem extends StatefulWidget {
  @override
  CircularListItemState createState() {
    return new CircularListItemState();
  }
}

class CircularListItemState extends State<CircularListItem> {
  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: new Matrix4.translationValues(-30.0, -30.0, 0.0),
      child: Container(
        width: 40.0,
        height: 20.0,
        decoration: new ShapeDecoration(
            color: lightening_yellow,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)))),
      ),
    );
  }
}
