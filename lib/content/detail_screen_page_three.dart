import 'package:contraflutterkit/custom_widgets/contra_button.dart';
import 'package:contraflutterkit/custom_widgets/contra_button_round.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class DetailScreenPageThree extends StatefulWidget {
  @override
  _DetailScreenPageThreeState createState() => _DetailScreenPageThreeState();
}

class _DetailScreenPageThreeState extends State<DetailScreenPageThree> {
  List<Color> bgs = List<Color>();

  @override
  void initState() {
    super.initState();
    bgs.add(flamingo);
    bgs.add(lightening_yellow);
    bgs.add(pastel_pink);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Column(
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
                        text: "More",
                        size: 200,
                        color: persian_blue,
                        height: 60,
                        textColor: white,
                        shadowColor: wood_smoke,
                        callback: () {},
                        borderColor: persian_blue,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Center(
                          child: SvgPicture.asset(
                              "assets/icons/placeholder_icon.svg")),
                      decoration: ShapeDecoration(
                          color: bgs[index],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)))),
                    );
                  },
                  itemCount: bgs.length,
                  itemWidth: 450.0,
                  itemHeight: 450.0,
                  layout: SwiperLayout.TINDER,
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
