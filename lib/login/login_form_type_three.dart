import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/button_solid_with_icon.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'contra_text.dart';

class LoginFormTypeThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: <Widget>[
        Container(
          color: lightening_yellow,
          alignment: Alignment.center,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SvgPicture.asset(
                "assets/images/peep_standing_left.svg",
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
                "assets/images/peep_standing_right.svg",
                width: 370,
                height: 590,
              ),
            ],
          ),
        ),
        Positioned(
          left: 24,
          top: 56,
          child: ButtonRoundWithShadow(
            size: 48,
            iconPath: "assets/icons/close.svg",
            borderColor: black,
            shadowColor: black,
            color: white,
            callback: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        Container(
          height: 410,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.all(24),
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ContraText(
                text: "Login",
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "You don’t think you should login first and behave like human not robot.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 17, color: trout, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 16,
              ),
              ButtonPlainWithIcon(
                color: wood_smoke,
                textColor: white,
                iconPath: "assets/icons/mail.svg",
                isPrefix: true,
                isSuffix: false,
                text: "Email",
                callback: () {},
              ),
              SizedBox(
                height: 16,
              ),
              ButtonPlainWithIcon(
                color: persian_blue,
                textColor: white,
                iconPath: "assets/icons/facebook.svg",
                isPrefix: true,
                isSuffix: false,
                text: "Facebook",
                callback: () {},
              ),
              SizedBox(
                height: 16,
              ),
              ButtonPlainWithIcon(
                color: carribean_green,
                textColor: white,
                iconPath: "assets/icons/twitter.svg",
                isPrefix: true,
                isSuffix: false,
                text: "Twitter",
                callback: () {},
              ),
            ],
          ),
        )
      ]),
    );
  }
}
