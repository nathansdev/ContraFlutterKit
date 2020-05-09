import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/button_solid_with_icon.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'input_text_box_bigger.dart';
import 'login_input_email_text.dart';
import 'login_text.dart';

class ContactUsForm extends StatelessWidget {
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
            SizedBox(
              height: 24,
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: <Widget>[
                  LoginText(
                    text: "Contact us",
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Wireframe is still important for ideation.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 21,
                        color: trout,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  LoginEmailText(
                    text: "Full Name",
                    iconPath: "assets/icons/user.svg",
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  InputTextBoxBigger(
                    text: "Write your message",
                    iconPath: "assets/icons/mail.svg",
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ButtonPlainWithIcon(
                    color: wood_smoke,
                    textColor: white,
                    iconPath: "assets/icons/arrow_next.svg",
                    isPrefix: false,
                    isSuffix: true,
                    text: "Send Message",
                    callback: () {},
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
