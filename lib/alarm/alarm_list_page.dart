import 'dart:io';

import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'alarm.dart';
import 'alarm_list_item.dart';

class AlarmListPage extends StatefulWidget {
  @override
  _AlarmListPageState createState() => _AlarmListPageState();
}

class _AlarmListPageState extends State<AlarmListPage> {
  List<Alarm> list = <Alarm>[];
  List<String> items = <String>[];
  List<String> items2 = <String>[];

  @override
  void initState() {
    super.initState();
    items.add("S");
    items.add("M");
    items.add("T");
    items.add("W");
    items.add("T");
    items.add("F");
    items.add("S");
    items2.add("T");
    items2.add("W");
    items2.add("T");
    items2.add("F");
    items2.add("S");
    list.add(Alarm(time: "06:30", am_pm: "AM", datesList: items));
    list.add(Alarm(time: "10:30", am_pm: "AM", datesList: items));
    list.add(Alarm(time: "11:30", am_pm: "AM", datesList: items2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 120,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              kIsWeb || Platform.isIOS
                  ? ButtonRoundWithShadow(
                      size: 48,
                      borderColor: wood_smoke,
                      color: white,
                      callback: () {
                        Navigator.pop(context);
                      },
                      shadowColor: wood_smoke,
                      iconPath: "assets/icons/arrow_back.svg")
                  : SizedBox(),
              kIsWeb || Platform.isIOS
                  ? SizedBox(
                      width: 20,
                    )
                  : SizedBox(),
              ContraText(
                alignment: Alignment.bottomLeft,
                size: 44,
                text: "Alarm",
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return AlarmListItem(
            alarm: list[index],
          );
        },
        itemCount: list.length,
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ButtonRoundWithShadow(
              size: 60,
              borderColor: wood_smoke,
              color: white,
              callback: () {
                Navigator.pop(context);
              },
              shadowColor: wood_smoke,
              iconPath: "assets/icons/ic_add.svg"),
        ),
      ),
    );
  }
}
