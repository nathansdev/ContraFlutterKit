import 'package:contraflutterkit/onboarding/onboard_data.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardPageTypeTwo extends StatelessWidget {
  final OnboardData data;

  const OnboardPageTypeTwo({required this.data});

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
                      height: 40,
                    ),
                    Center(
                      child: SvgPicture.asset(
                        data.placeHolder,
                        height: 370,
                        width: 310,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24.0, top: 12.0, bottom: 12.0),
                    child: Text(
                      data.title,
                      textAlign: TextAlign.start,
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
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 21,
                          color: trout,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
