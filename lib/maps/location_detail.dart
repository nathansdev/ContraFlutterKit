import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/button_solid_with_icon.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'map_widget.dart';

class LocationDetailPage extends StatefulWidget {
  @override
  _LocationDetailPageState createState() => _LocationDetailPageState();
}

class _LocationDetailPageState extends State<LocationDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: persian_blue,
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
                      borderColor: lightening_yellow,
                      color: lightening_yellow,
                      callback: () {
                        Navigator.pop(context);
                      },
                      shadowColor: wood_smoke,
                      iconPath: "assets/icons/arrow_back_white.svg"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ContraText(
                size: 27,
                color: white,
                alignment: Alignment.bottomCenter,
                text: "Directions",
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
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(24),
              child: MapWidget(
                distance: "2.5",
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ContraText(
                      color: white,
                      size: 44,
                      weight: FontWeight.w800,
                      alignment: Alignment.centerLeft,
                      text: "Space 8",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ContraText(
                      color: white,
                      size: 21,
                      weight: FontWeight.w500,
                      alignment: Alignment.centerLeft,
                      text: "Wolf Crater, 897, \n New Milkyway Mars",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: ButtonPlainWithIcon(
                      text: "Get Direction",
                      color: wood_smoke,
                      callback: () {},
                      size: 48,
                      isPrefix: false,
                      isSuffix: true,
                      textColor: white,
                      iconPath: "assets/icons/ic_navigation_white.svg",
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
