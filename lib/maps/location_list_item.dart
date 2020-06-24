import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/maps/location.dart';
import 'package:contraflutterkit/maps/map_widget.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationListItem extends StatelessWidget {
  Location location;

  LocationListItem({this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: <Widget>[
          Container(
            height: 160,
            child: MapWidget(
              distance: location.distance,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ContraText(
                    color: wood_smoke,
                    size: 24,
                    weight: FontWeight.w800,
                    alignment: Alignment.center,
                    text: "Space 8",
                  ),
                  ContraText(
                    color: trout,
                    size: 21,
                    weight: FontWeight.w500,
                    alignment: Alignment.center,
                    text: "Wolf Crater, 897, Marsh",
                  )
                ],
              ),
              ButtonRoundWithShadow(
                size: 60,
                borderColor: wood_smoke,
                shadowColor: wood_smoke,
                callback: () {},
                color: white,
                iconPath: "assets/icons/ic_navigation.svg",
              )
            ],
          )
        ],
      ),
    );
  }
}
