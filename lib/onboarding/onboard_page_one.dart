import 'package:contraflutterkit/utils/colors.dart';
import 'package:contraflutterkit/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardPageTypeOne extends StatelessWidget {
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
                      height: 30,
                    ),
                    Center(
                      child: SvgPicture.asset(
                        "assets/images/onboarding_image_one.svg",
                        height: 320,
                        width: 320,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24.0, top: 12.0, bottom: 12.0),
                    child: Text(
                      Strings.contra_wireframe_kit,
                      textAlign: TextAlign.center,
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
                      textAlign: TextAlign.center,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24, right: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(16),
                          color: white,
                          textColor: black,
                          onPressed: () {},
                          child: Text(
                            "Skip",
                            style: TextStyle(
                                fontSize: 21.0, fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(16.0),
                              side: BorderSide(color: black, width: 2.0)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 24, left: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(16),
                          color: wood_smoke,
                          onPressed: () {},
                          textColor: white,
                          child: Text(
                            "Next",
                            style: TextStyle(
                                fontSize: 21.0, fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(16.0)),
                        ),
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
