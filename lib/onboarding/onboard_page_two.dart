import 'package:contraflutterkit/custom_widgets/circle_dot_widget.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:contraflutterkit/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardPageTypeTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: white,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: SvgPicture.asset(
                        "assets/images/onboarding_image_two.svg",
                        height: 370,
                        width: 310,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24.0, top: 12.0, bottom: 12.0),
                    child: Text(
                      Strings.contra_wireframe_kit,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 36,
                          color: wood_smoke,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24.0, top: 12.0, bottom: 12.0),
                    child: Text(
                      Strings.contra_wireframe_kit_page_text,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 21,
                          color: trout,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 6, left: 24),
                      child: Row(
                        children: <Widget>[
                          CircleDotWidget(
                            isActive: true,
                            color: flamingo,
                            borderColor: flamingo,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleDotWidget(
                              isActive: false,
                              color: white,
                              borderColor: wood_smoke,
                            ),
                          ),
                          CircleDotWidget(
                            isActive: false,
                            color: white,
                            borderColor: wood_smoke,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6, right: 24),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: ShapeDecoration(
                            shadows: [
                              BoxShadow(
                                color: wood_smoke,
                                offset: Offset(
                                  0.0, // Move to right 10  horizontally
                                  4.0, // Move to bottom 5 Vertically
                                ),
                              )
                            ],
                            color: lightening_yellow,
                            shape: CircleBorder(
                                side: BorderSide(color: wood_smoke, width: 2))),
                        child: SvgPicture.asset("assets/icons/arrow_back.svg"),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
