import 'package:contraflutterkit/alarm/weather.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class WeatherWidget extends StatelessWidget {
  WeatherDate date;

  WeatherWidget({this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ContraText(
            text: date.day,
            alignment: Alignment.center,
            weight: FontWeight.w800,
            size: 13,
            color: wood_smoke,
          ),
          SizedBox(
            height: 10,
          ),
          SvgPicture.asset(
            date.image,
            width: 32,
            height: 32,
          )
        ],
      ),
    );
  }
}
