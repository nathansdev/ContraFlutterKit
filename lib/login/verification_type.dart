import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/button_solid_with_icon.dart';
import 'package:contraflutterkit/login/rich_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'login_text.dart';

class VerificationType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(alignment: Alignment.bottomCenter, children: <Widget>[
        Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                color: lightening_yellow,
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset(
                  "assets/images/peep_verify.svg",
                  height: 276,
                  width: 254,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(24),
                color: white,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 16,
                    ),
                    CustomRichText(
                      alignment: Alignment.center,
                      text_one: "Didn’t get fav number? ",
                      text_second: "Get new",
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ButtonPlainWithIcon(
                      iconPath: "assets/icons/arrow_back.svg",
                      isPrefix: false,
                      isSuffix: false,
                      text: "Verify",
                      callback: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 24,
          top: 72,
          child: Row(
            children: <Widget>[
              ButtonRoundWithShadow(
                iconPath: "assets/icons/arrow.svg",
                borderColor: black,
                shadowColor: black,
                color: white,
                callback: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "One timepass",
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w800,
                    color: wood_smoke),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
