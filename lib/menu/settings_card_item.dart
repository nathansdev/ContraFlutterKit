import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/menu/settings.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsCardItem extends StatefulWidget {
  Settings setting;

  SettingsCardItem({this.setting});

  @override
  _SettingsCardItemState createState() => _SettingsCardItemState();
}

class _SettingsCardItemState extends State<SettingsCardItem> {
  String title;

  String text;

  bool enable;

  Color bgColor;

  Color textColor;
  bool isChanged = false;

  void onChanged(bool value) {
    setState(() {
      isChanged = value;
    });
  }

  @override
  void initState() {
    super.initState();
    isChanged = widget.setting.enable;
    title = widget.setting.title;
    text = widget.setting.text;
    enable = widget.setting.enable;
    bgColor = widget.setting.bgColor;
    textColor = widget.setting.textColor;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: ShapeDecoration(
          color: bgColor,
          shape: RoundedRectangleBorder(
              side: BorderSide(color: wood_smoke, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(16)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ContraText(
            size: 27,
            color: textColor,
            alignment: Alignment.centerLeft,
            text: title,
            weight: FontWeight.w800,
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 8,
          ),
          ContraText(
            size: 15,
            color: textColor,
            alignment: Alignment.centerLeft,
            text: text,
            weight: FontWeight.bold,
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 8,
          ),
          Switch(
            value: isChanged,
            onChanged: onChanged,
            activeTrackColor: lightening_yellow,
            inactiveTrackColor: santas_gray,
            inactiveThumbColor: white,
          )
        ],
      ),
    );
  }
}
