import 'package:contraflutterkit/alarm/weather.dart';
import 'package:contraflutterkit/alarm/weather_list_item.dart';
import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherListPage extends StatefulWidget {
  @override
  _WeatherListPageState createState() => _WeatherListPageState();
}

class _WeatherListPageState extends State<WeatherListPage> {
  List<Weather> clocks = List<Weather>();

  @override
  void initState() {
    super.initState();
    clocks.add(Weather(
        country: "India",
        city: "New Delhi",
        image: "assets/icons/ic_cloud_rain.svg",
        time: "06:30",
        am_pm: "AM",
        degree: "85",
        color: white));
    clocks.add(Weather(
        country: "China",
        city: "Wuhan",
        degree: "85",
        am_pm: "AM",
        image: "assets/icons/ic_cloud_rain.svg",
        time: "10:30",
        color: dandelion));
    clocks.add(Weather(
        country: "Pakistan",
        image: "assets/icons/ic_cloud_rain.svg",
        degree: "85",
        am_pm: "AM",
        city: "Karachi",
        time: "06:30",
        color: pastel_pink));
    clocks.add(Weather(
        country: "USA",
        image: "assets/icons/ic_cloud_rain.svg",
        degree: "85",
        am_pm: "AM",
        city: "Ohio",
        time: "06:30",
        color: flamingo));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: CustomAppBar(
        height: 120,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ContraText(
            alignment: Alignment.bottomLeft,
            size: 44,
            text: "Weather",
          ),
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
        padding: EdgeInsets.all(24),
        itemBuilder: (BuildContext context, int index) {
          return WeatherListItem(
            weather: clocks[index],
          );
        },
        itemCount: clocks.length,
      ),
    );
  }
}
