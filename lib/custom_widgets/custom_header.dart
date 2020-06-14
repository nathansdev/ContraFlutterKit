import 'package:contraflutterkit/login/login_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          LoginText(
            text: "Saved",
            alignment: Alignment.centerLeft,
            size: 44,
          ),
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
