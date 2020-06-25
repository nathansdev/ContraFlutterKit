import 'package:contraflutterkit/custom_widgets/contra_button.dart';
import 'package:contraflutterkit/custom_widgets/contra_button_round.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreenPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightening_yellow,
      body: Stack(alignment: Alignment.bottomCenter, children: <Widget>[
        Container(
          color: lightening_yellow,
          alignment: Alignment.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SvgPicture.asset(
                "assets/images/peep_standing_left_two.svg",
                width: 370,
                height: 590,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SvgPicture.asset(
                "assets/images/peep_standing_right_two.svg",
                width: 370,
                height: 590,
              ),
            ],
          ),
        ),
        Positioned(
          left: 24,
          top: 56,
          child: ContraButtonRound(
            size: 48,
            iconPath: "assets/icons/arrow_back.svg",
            borderColor: black,
            shadowColor: black,
            color: white,
            callback: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        Container(
          height: 350,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.all(24),
          padding: EdgeInsets.all(24),
          decoration: ShapeDecoration(
              shadows: [BoxShadow(color: wood_smoke, offset: Offset(0, 6))],
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 2, color: wood_smoke),
                borderRadius: BorderRadius.circular(16),
              ),
              color: white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ContraText(
                textAlign: TextAlign.center,
                text: "Title of the features",
                alignment: Alignment.center,
                size: 36,
                color: wood_smoke,
                weight: FontWeight.w800,
              ),
              SizedBox(
                height: 10,
              ),
              ContraText(
                text:
                    "This title may have some detailed descriptions, which can go here. Some of these text box information is secured.",
                alignment: Alignment.center,
                size: 15,
                color: trout,
                weight: FontWeight.w500,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 16,
              ),
              ContraButton(
                borderColor: persian_blue,
                text: "Confirm",
                color: persian_blue,
                textColor: white,
                callback: () {},
                height: 60,
                isPrefix: true,
                shadowColor: persian_blue,
                isSuffix: false,
                iconPath: "assets/icons/ic_heart_fill.svg",
                iconColor: white,
              )
            ],
          ),
        )
      ]),
    );
  }
}
