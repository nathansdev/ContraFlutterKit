import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
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
    return GestureDetector(
      onTap: () {
        onChanged(!isChanged);
      },
      child: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    ContraText(
                      alignment: Alignment.centerLeft,
                      text: "06:30",
                      size: 44,
                      color: isChanged ? wood_smoke : santas_gray,
                    ),
                    ContraText(
                      alignment: Alignment.centerLeft,
                      text: "AM",
                      size: 15,
                      color: isChanged ? wood_smoke : santas_gray,
                    ),
                  ],
                ),
                Switch(
                  value: isChanged,
                  onChanged: onChanged,
                  activeColor: lightening_yellow,
                  activeTrackColor: lightening_yellow,
                  inactiveTrackColor: santas_gray,
                  inactiveThumbColor: white,
                )
              ],
            ),
            Wrap(
              runAlignment: WrapAlignment.start,
              alignment: WrapAlignment.start,
              direction: Axis.horizontal,
              children: List<Widget>.generate(widget.alarm.datesList.length,
                  (int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(
                    items[index],
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: isChanged ? wood_smoke : santas_gray,
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
