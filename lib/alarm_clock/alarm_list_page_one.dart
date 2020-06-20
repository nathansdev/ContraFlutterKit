import 'package:contraflutterkit/alarm_clock/alarm.dart';
import 'package:contraflutterkit/alarm_clock/alarm_list_item.dart';
import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/login_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/material.dart';

class AlarmListPageOne extends StatefulWidget {
  @override
  _AlarmListPageOneState createState() => _AlarmListPageOneState();
}

class _AlarmListPageOneState extends State<AlarmListPageOne> {
  List<Alarm> list = List<Alarm>();
  List<String> items = List<String>();

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
        child: LoginText(
          alignment: Alignment.bottomLeft,
          size: 44,
          text: "Alarm",
        ),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return AlarmListItem(
          alarm: list[index],
        );
      }),
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
