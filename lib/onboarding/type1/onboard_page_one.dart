import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../onboard_data.dart';

class OnboardPageTypeOne extends StatelessWidget {
  final OnboardData data;

  const OnboardPageTypeOne({this.data});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: white,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: SvgPicture.asset(
                        data.placeHolder,
                        height: 320,
                        width: 320,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24.0, top: 12.0, bottom: 12.0),
                    child: Text(
                      data.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 36,
                          color: wood_smoke,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24.0, top: 12.0, bottom: 12.0),
                    child: Text(
                      data.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 21,
                          color: trout,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
