import 'package:contraflutterkit/custom_widgets/button_plain.dart';
import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/material.dart';

import 'alarm.dart';
import 'alarm_label.dart';
import 'alarm_label_widget.dart';

class AddAlarmPage extends StatefulWidget {
  @override
  _AddAlarmPageState createState() => _AddAlarmPageState();
}

class _AddAlarmPageState extends State<AddAlarmPage> {
  List<Alarm> list = List<Alarm>();
  List<String> items = List<String>();
  bool isChanged = false;

  void onChanged(bool value) {
    setState(() {
      isChanged = value;
    });
  }

  @override
  void initState() {
    super.initState();
    items.add("T");
    items.add("S");
    items.add("T");
    list.add(Alarm(time: "06:30", am_pm: "AM", datesList: items));
    list.add(Alarm(time: "06:30", am_pm: "AM", datesList: items));
    list.add(Alarm(time: "06:30", am_pm: "AM", datesList: items));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ButtonRoundWithShadow(
                      size: 48,
                      borderColor: wood_smoke,
                      color: white,
                      callback: () {
                        Navigator.pop(context);
                      },
                      shadowColor: wood_smoke,
                      iconPath: "assets/icons/arrow_back.svg"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ContraText(
                size: 27,
                alignment: Alignment.bottomCenter,
                text: "Add Alarm",
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: 20,
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          AlarmLabelWidget(
            label: AlarmLabel(
                title: "Repeat", selected: false, selectedText: "Never"),
          ),
          AlarmLabelWidget(
            label: AlarmLabel(
                title: "Title", selected: true, selectedText: "Never"),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ContraText(
                  color: wood_smoke,
                  size: 21,
                  text: "Snooze",
                  alignment: Alignment.centerLeft,
                ),
                Switch(
                  value: isChanged,
                  onChanged: onChanged,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ButtonPlain(
              text: "Save",
              height: 48,
              color: wood_smoke,
              borderColor: wood_smoke,
              onTap: () {},
              textSize: 21,
              textColor: white,
            ),
          )
        ],
      ),
      floatingActionButton: ButtonRoundWithShadow(
          size: 48,
          borderColor: wood_smoke,
          color: white,
          callback: () {
            Navigator.pop(context);
          },
          shadowColor: wood_smoke,
          iconPath: "assets/icons/ic_add.svg"),
    );
  }
}
