import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'alarm_label.dart';

class AlarmLabelWidget extends StatelessWidget {
  AlarmLabel label;
  VoidCallback onTap;

  AlarmLabelWidget({this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ContraText(
              text: label.title,
              alignment: Alignment.centerLeft,
              color: wood_smoke,
              size: 21,
            ),
            label.selected
                ? ContraText(
                    text: label.selectedText,
                    alignment: Alignment.centerLeft,
                    color: black,
                    size: 17,
                  )
                : Icon(
                    Icons.arrow_forward_ios,
                    color: wood_smoke,
                  )
          ],
        ),
      ),
    );
  }
}
