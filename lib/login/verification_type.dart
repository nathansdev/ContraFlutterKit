import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/button_solid_with_icon.dart';
import 'package:contraflutterkit/login/rich_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VerificationType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(alignment: Alignment.bottomCenter, children: <Widget>[
        Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                color: lightening_yellow,
              ),
            ),
            Expanded(
              flex: 2,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 56,
                          height: 56,
                          alignment: Alignment.center,
                          child: TextField(
                            maxLength: 1,
                            onChanged: (String text) {
                              if (text.isNotEmpty) {
                                FocusScope.of(context).nextFocus();
                              } else if (text.isEmpty) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: wood_smoke),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              counterText: "",
                              hintStyle: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                  color: wood_smoke),
                              hintText: "_",
                              contentPadding: EdgeInsets.all(2),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                            ),
                          ),
                        ),
                        Container(
                          width: 56,
                          height: 56,
                          alignment: Alignment.center,
                          child: TextField(
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            onChanged: (String text) {
                              if (text.isNotEmpty) {
                                FocusScope.of(context).nextFocus();
                              } else if (text.isEmpty) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: wood_smoke),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              counterText: "",
                              contentPadding: EdgeInsets.all(2),
                              hintStyle: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                  color: wood_smoke),
                              hintText: "_",
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                            ),
                          ),
                        ),
                        Container(
                          width: 56,
                          height: 56,
                          alignment: Alignment.center,
                          child: TextField(
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            onChanged: (String text) {
                              if (text.isNotEmpty) {
                                FocusScope.of(context).nextFocus();
                              } else if (text.isEmpty) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: wood_smoke),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              counterText: "",
                              contentPadding: EdgeInsets.all(2),
                              hintStyle: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                  color: wood_smoke),
                              hintText: "_",
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                            ),
                          ),
                        ),
                        Container(
                          width: 56,
                          height: 56,
                          alignment: Alignment.center,
                          child: TextField(
                            maxLength: 1,
                            textAlign: TextAlign.center,
                            onChanged: (String text) {
                              if (text.isNotEmpty) {
                                FocusScope.of(context).nextFocus();
                              } else if (text.isEmpty) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: wood_smoke),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              counterText: "",
                              contentPadding: EdgeInsets.all(2),
                              hintStyle: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                  color: wood_smoke),
                              hintText: "_",
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 2, color: black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                            ),
                          ),
                        ),
                      ],
                    ),
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
                      color: wood_smoke,
                      textColor: white,
                      iconPath: "assets/icons/arrow_forward.svg",
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
                size: 48,
                iconPath: "assets/icons/arrow_back.svg",
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
