import 'package:contraflutterkit/custom_widgets/button_solid_with_icon.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login_input_email_text.dart';
import 'login_input_password_text.dart';

class LoginFormTypeFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: <Widget>[
        Container(
          color: flamingo,
          alignment: Alignment.center,
          child: SvgPicture.asset(
            "assets/images/peep_standing_center.svg",
            height: 800,
            width: 180,
          ),
        ),
        Container(
          height: 360,
          alignment: Alignment.bottomCenter,
          decoration: ShapeDecoration(
            shadows: [
              BoxShadow(
                color: wood_smoke,
                offset: Offset(
                  0.0, // Move to right 10  horizontally
                  -6.0, // Move to bottom 5 Vertically
                ),
              )
            ],
            color: white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16))),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Container(
                  height: 56,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Text(
                          "Welcome",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                              color: wood_smoke),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: SvgPicture.asset(
                                "assets/icons/close.svg",
                                color: wood_smoke,
                              )))
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: wood_smoke,
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: LoginEmailText(
                  text: "Email address",
                  iconPath: "assets/icons/user.svg",
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: LoginPasswordText(
                  text: "..........",
                  iconPath: "assets/icons/lock.svg",
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ButtonPlainWithIcon(
                  size: 48,
                  color: wood_smoke,
                  textColor: white,
                  iconPath: "assets/icons/arrow_next.svg",
                  isPrefix: false,
                  isSuffix: true,
                  text: "Continue",
                  callback: () {},
                ),
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
