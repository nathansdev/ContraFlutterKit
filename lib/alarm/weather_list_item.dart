import 'package:contraflutterkit/alarm/weather.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WeatherListItem extends StatelessWidget {
  Weather weather;

  WeatherListItem({this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      padding: EdgeInsets.all(24),
      decoration: ShapeDecoration(
          color: weather.color,
          shadows: [BoxShadow(color: wood_smoke, offset: Offset(0, 2))],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              side: BorderSide(color: wood_smoke, width: 2))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ContraText(
                color: wood_smoke,
                text: weather.country,
                size: 27,
                alignment: Alignment.centerLeft,
              ),
              Row(
                children: <Widget>[
                  ContraText(
                    color: wood_smoke,
                    text: weather.city + ",",
                    size: 13,
                    alignment: Alignment.centerLeft,
                    weight: FontWeight.bold,
                  ),
                  ContraText(
                    color: wood_smoke,
                    text: weather.time + weather.am_pm,
                    size: 13,
                    alignment: Alignment.centerLeft,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              SvgPicture.asset("assets/icons/ic_cloud_rain.svg"),
              SizedBox(
                width: 10,
              ),
              ContraText(
                color: wood_smoke,
                text: weather.degree + "\u00B0",
                size: 44,
                alignment: Alignment.centerLeft,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
