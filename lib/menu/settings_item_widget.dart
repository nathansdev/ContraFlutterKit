import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/menu/settings.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsItemWidget extends StatefulWidget {
  SettingsItem settingsItem;

  SettingsItemWidget({this.settingsItem});

  @override
  _SettingsItemWidgetState createState() => _SettingsItemWidgetState();
}

class _SettingsItemWidgetState extends State<SettingsItemWidget> {
  String title;
  String description;

  bool enable;
  bool isChanged = false;

  void onChanged(bool value) {
    setState(() {
      isChanged = value;
    });
  }

  @override
  void initState() {
    super.initState();
    isChanged = widget.settingsItem.enable;
    title = widget.settingsItem.title;
    description = widget.settingsItem.description;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ContraText(
                  text: title,
                  color: wood_smoke,
                  alignment: Alignment.centerLeft,
                  size: 21,
                  weight: FontWeight.w800,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 4,
                ),
                description.isNotEmpty
                    ? Text(
                        description,
                        style: TextStyle(
                            color: trout,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    : SizedBox(
                        height: 0,
                      ),
              ],
            ),
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
