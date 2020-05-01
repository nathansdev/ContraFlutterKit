import 'package:contraflutterkit/utils/colors.dart';
import 'package:contraflutterkit/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardPageTypeFour extends StatelessWidget {
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
                        "assets/images/onboarding_image_four.svg",
                        height: 340,
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
                        left: 24.0, right: 24.0, top: 12.0, bottom: 4.0),
                    child: Text(
                      Strings.open_source,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 21,
                          color: santas_gray,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24.0, right: 24.0, top: 4.0, bottom: 12.0),
                    child: Text(
                      Strings.contra_wireframe_kit_next_line,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 44,
                          color: wood_smoke,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24.0, top: 8, right: 24),
                    child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        padding: EdgeInsets.all(16),
                        color: wood_smoke,
                        onPressed: () {
                          Navigator.pushNamed(context, "/welcome_screen");
                        },
                        textColor: white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Get Started",
                              style: TextStyle(
                                  fontSize: 21.0, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: SvgPicture.asset(
                                  "assets/icons/arrow_next.svg"),
                            )
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(16.0)),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
