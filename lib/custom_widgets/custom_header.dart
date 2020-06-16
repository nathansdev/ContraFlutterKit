import 'package:contraflutterkit/login/login_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
            children: <Widget>[
              // Stroked text as border.
              Text(
                'Saved',
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.w800,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 1
                    ..color = wood_smoke,
                ),
              ),
              // Solid text as fill.
              Text(
                'Saved',
                style: TextStyle(
                    fontSize: 44, color: white, fontWeight: FontWeight.w800),
              ),
            ],
          ),
//          LoginText(
//            text: "Saved",
//            alignment: Alignment.centerLeft,
//            size: 44,
//          ),
          LoginText(
            text: "Payments",
            alignment: Alignment.centerLeft,
            size: 44,
          )
        ],
      ),
    );
  }
}
