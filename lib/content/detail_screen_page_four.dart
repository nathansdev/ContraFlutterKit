import 'package:contraflutterkit/custom_widgets/contra_button.dart';
import 'package:contraflutterkit/custom_widgets/contra_button_round.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreenPageFour extends StatefulWidget {
  @override
  _DetailScreenPageFourState createState() => _DetailScreenPageFourState();
}

class _DetailScreenPageFourState extends State<DetailScreenPageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CustomAppBar(
                height: 140,
                child: Row(
                  children: <Widget>[],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ContraText(
                  color: trout,
                  size: 17,
                  alignment: Alignment.center,
                  text: "SIMPLE TAG ",
                  textAlign: TextAlign.center,
                  weight: FontWeight.w800,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ContraText(
                  color: wood_smoke,
                  size: 36,
                  weight: FontWeight.w800,
                  alignment: Alignment.center,
                  text: "Contra wireframe kit dude, yeah!!",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ContraText(
                  color: trout,
                  size: 17,
                  alignment: Alignment.center,
                  textAlign: TextAlign.center,
                  weight: FontWeight.w500,
                  text:
                      "Wireframe is still important for ideation. It will help you to quickly test idea.",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ContraButton(
                  isPrefix: false,
                  isSuffix: false,
                  text: "Lets Go",
                  size: 200,
                  color: wood_smoke,
                  height: 60,
                  textColor: white,
                  shadowColor: wood_smoke,
                  callback: () {},
                  borderColor: wood_smoke,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SvgPicture.asset(
                "assets/images/peep_lady_left.svg",
                width: 220,
                height: 300,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SvgPicture.asset(
                "assets/images/peep_man_right.svg",
                width: 260,
                height: 300,
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
