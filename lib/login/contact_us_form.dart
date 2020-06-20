import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/button_solid_with_icon.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contra_text.dart';
import 'input_text_box_bigger.dart';
import 'login_input_email_text.dart';

class ContactUsForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(24),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    children: <Widget>[],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    children: <Widget>[
                      ContraText(
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
              ],
            ),
          ),
          Positioned(
            left: 24,
            top: 80,
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
          )
        ],
      ),
    );
  }
}
