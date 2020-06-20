import 'package:contraflutterkit/login/login_text.dart';
import 'package:flutter/material.dart';

import 'alarm.dart';

class AlarmListItem extends StatefulWidget {
  Alarm alarm;

  AlarmListItem({this.alarm});

  @override
  _AlarmListItemState createState() => _AlarmListItemState();
}

class _AlarmListItemState extends State<AlarmListItem> {
  List<String> items = List<String>();

  @override
  void initState() {
    super.initState();
    items = widget.alarm.datesList;
  }

  bool isChanged = false;

  void onChanged(bool value) {
    setState(() {
      isChanged = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              LoginText(
                alignment: Alignment.centerLeft,
                text: "06:30",
              ),
              Switch(
                value: isChanged,
                onChanged: onChanged,
              )
            ],
          ),
          Wrap(
            children: List<Widget>.generate(widget.alarm.datesList.length,
                (int index) {
              return Text(items[index]);
            }),
          )
        ],
      ),
    );
  }
}
