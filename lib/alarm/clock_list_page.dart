import 'package:contraflutterkit/alarm/clock_list_item.dart';
import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/custom_widgets/custom_header.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'clock.dart';

class ClockListPage extends StatefulWidget {
  @override
  _ClockListPageState createState() => _ClockListPageState();
}

class _ClockListPageState extends State<ClockListPage> {
  List<Clock> clocks = List<Clock>();

  @override
  void initState() {
    super.initState();
    clocks.add(Clock(
        country: "India",
        city: "New Delhi",
        am_pm: "AM",
        time: "06:30",
        color: white));
    clocks.add(Clock(
        country: "China",
        city: "Wuhan",
        am_pm: "AM",
        time: "10:30",
        color: dandelion));
    clocks.add(Clock(
        country: "Pakistan",
        city: "Karachi",
        am_pm: "AM",
        time: "06:30",
        color: pastel_pink));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: persian_blue,
      appBar: CustomAppBar(
        height: 200,
        child: CustomHeader(
          lineOneText: "World",
          lineTwotext: "Clock",
          color: white,
          bg_color: persian_blue,
          fg_color: white,
        ),
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
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 24),
        itemBuilder: (BuildContext context, int index) {
          return ClockListItem(
            clock: clocks[index],
          );
        },
        itemCount: clocks.length,
      ),
    );
  }
}
