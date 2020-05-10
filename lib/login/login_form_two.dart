import 'package:contraflutterkit/custom_widgets/button_plain_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/login/rich_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_input_email_text.dart';
import 'login_input_password_text.dart';
import 'login_text.dart';

class LoginFormTypeTwo extends StatelessWidget {
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
              flex: 3,
              child: Column(
                children: <Widget>[
                  LoginText(
                    text: "Login",
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "You don’t think you should login first and behave like human not robot.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 21,
                        color: trout,
                        fontWeight: FontWeight.w500),
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
                    text: "..........",
                    iconPath: "assets/icons/lock.svg",
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ButtonPlainWithShadow(
                    text: "Sign in",
                    shadowColor: wood_smoke,
                    borderColor: wood_smoke,
                    callback: () {},
                    color: lightening_yellow,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomRichText(
                    alignment: Alignment.centerLeft,
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
