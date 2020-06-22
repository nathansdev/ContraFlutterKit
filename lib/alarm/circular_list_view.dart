import 'dart:math';

import 'package:contraflutterkit/alarm/circular_list_item.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/material.dart';

import 'circular_list_position.dart';

class CircularListView extends StatefulWidget {
  final List<int> items;
  final double radius;

  CircularListView({
    this.items,
    this.radius,
  });

  List<Widget> _radialListItems() {
    final double firstItemAngle = pi;
    final double lastItemAngle = pi;
    final double angleDiff = (firstItemAngle + lastItemAngle) / (items.length);

    double currentAngle = firstItemAngle;
    return items.map((int i) {
      final listItem = _radialListItem(currentAngle);
      currentAngle += angleDiff;
      return listItem;
    }).toList();
  }

  List<Widget> _allWidgets() {
    List<Widget> allWidgets = List<Widget>();
    allWidgets.add(_backgroundWidget());
    allWidgets.addAll(_radialListItems());
    return allWidgets;
  }

  Widget _backgroundWidget() {
    return Transform(
      transform: new Matrix4.translationValues(145.0, 320.0, 0.0),
      child: Container(
        width: 120,
        height: 120,
        padding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 120),
        decoration: new BoxDecoration(
          color: white,
          shape: BoxShape.circle,
          border: new Border.all(
            color: Colors.black,
            width: 16,
          ),
        ),
      ),
    );
  }

  Widget _radialListItem(double angle) {
    return Transform(
      transform: new Matrix4.translationValues(215.0, 400.0, 0.0),
      child: CircularPosition(
        radius: radius,
        angle: angle,
        child: new CircularListItem(),
      ),
    );
  }

  @override
  CircularListViewState createState() {
    return new CircularListViewState();
  }
}

class CircularListViewState extends State<CircularListView> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: widget._allWidgets(),
    );
  }
}
