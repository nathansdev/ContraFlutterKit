import 'package:contraflutterkit/custom_widgets/contra_button.dart';
import 'package:contraflutterkit/custom_widgets/contra_button_round.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreenPageOne extends StatefulWidget {
  @override
  _DetailScreenPageOneState createState() => _DetailScreenPageOneState();
}

class _DetailScreenPageOneState extends State<DetailScreenPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  color: flamingo,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SvgPicture.asset(
                        "assets/images/shopping/peep_both.svg",
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    children: <Widget>[
                      ContraText(
                        text: "Chit chat ho jaye",
                        color: trout,
                        size: 17,
                        alignment: Alignment.center,
                        weight: FontWeight.w800,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ContraText(
                        text: "It’s very easy to do whatever you want to do",
                        color: wood_smoke,
                        size: 36,
                        alignment: Alignment.center,
                        weight: FontWeight.w800,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ContraText(
                        text:
                            "This title may have some detailed descriptions which can go here. But part of this text box is always secured.",
                        color: trout,
                        size: 17,
                        alignment: Alignment.center,
                        textAlign: TextAlign.center,
                        weight: FontWeight.w500,
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
                        shadowColor: persian_blue,
                        isSuffix: false,
                        isPrefix: false,
                      )
                    ],
                  ),
                ),
              ),
            ],
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
        ],
      ),
    );
  }
}
