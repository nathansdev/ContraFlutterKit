import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'clock.dart';

class ClockListItem extends StatelessWidget {
  Clock clock;

  ClockListItem({this.clock});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      padding: EdgeInsets.all(24),
      decoration: ShapeDecoration(
          color: clock.color,
          shadows: [BoxShadow(color: wood_smoke, offset: Offset(0, 2))],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              side: BorderSide(color: wood_smoke, width: 2))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ContraText(
                color: wood_smoke,
                text: clock.country,
                size: 27,
                alignment: Alignment.centerLeft,
              ),
              ContraText(
                color: trout,
                text: clock.city,
                size: 15,
                alignment: Alignment.centerLeft,
                weight: FontWeight.w500,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              ContraText(
                color: wood_smoke,
                text: clock.time,
                size: 44,
                alignment: Alignment.centerLeft,
              ),
              ContraText(
                color: wood_smoke,
                text: clock.am_pm,
                size: 15,
                alignment: Alignment.centerLeft,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
