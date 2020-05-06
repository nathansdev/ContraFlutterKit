import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/button_solid_with_icon.dart';
import 'package:contraflutterkit/login/login_input_password_text.dart';
import 'package:contraflutterkit/login/rich_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login_input_email_text.dart';
import 'login_text.dart';

class LoginFormTypeOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: white,
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 56,
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  ButtonRoundWithShadow(
                    iconPath: "assets/icons/close.svg",
                    borderColor: black,
                    shadowColor: black,
                    color: white,
                    callback: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    "assets/icons/logo_mark.svg",
                    height: 120,
                    width: 120,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: <Widget>[
                  LoginText(
                    text: "Login",
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  LoginEmailText(
                    text: "Email address",
                    iconPath: "assets/icons/user.svg",
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  LoginPasswordText(
                    text: "Email address",
                    iconPath: "assets/icons/lock.svg",
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  ButtonSolidWithIcon(
                    text: "Get Started",
                    callback: () {},
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomRichText(
                    alignment: Alignment.center,
                    text_one: "You are new? ",
                    text_second: "Create new",
                  )
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
