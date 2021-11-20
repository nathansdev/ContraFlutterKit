import 'dart:io';
import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:contraflutterkit/utils/strings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../onboard_data.dart';
import 'onboard_page_one.dart';

class OnboardingPagerTypeOne extends StatefulWidget {
  @override
  _OnboardingPagerTypeOneState createState() => _OnboardingPagerTypeOneState();
}

class _OnboardingPagerTypeOneState extends State<OnboardingPagerTypeOne> {
  late PageController _pageController;
  int currentPageValue = 0;

  final List<Widget> introWidgetsList = [];

  @override
  void initState() {
    try {
      introWidgetsList.add(OnboardPageTypeOne(
        data: OnboardData(
            placeHolder: kIsWeb
                ? "images/onboarding_image_one.svg"
                : "assets/images/onboarding_image_one.svg",
            title: Strings.contra_wireframe_kit,
            description: Strings.contra_wireframe_kit_page_text),
      ));
      introWidgetsList.add(OnboardPageTypeOne(
        data: OnboardData(
            placeHolder: kIsWeb
                ? "images/onboarding_image_two.svg"
                : "assets/images/onboarding_image_two.svg",
            title: Strings.contra_wireframe_kit,
            description: Strings.contra_wireframe_kit_page_text),
      ));
      introWidgetsList.add(OnboardPageTypeOne(
        data: OnboardData(
            placeHolder: kIsWeb
                ? "images/onboarding_image_three.svg"
                : "assets/images/onboarding_image_three.svg",
            title: Strings.contra_wireframe_kit,
            description: Strings.contra_wireframe_kit_page_text),
      ));
    } catch (e) {
      print("onboard pager type one error");
      print(e);
    }
    super.initState();
    _pageController = PageController(initialPage: currentPageValue);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        PageView.builder(
          physics: ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            return introWidgetsList[index];
          },
          onPageChanged: (int page) {
            animatePage(page);
          },
          itemCount: introWidgetsList.length,
          controller: _pageController,
        ),
        Stack(
          alignment: AlignmentDirectional.topStart,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: RaisedButton(
                        padding: EdgeInsets.all(16),
                        color: white,
                        textColor: black,
                        onPressed: () {
//                          Navigator.pushNamed(context, "/welcome_screen");
                        },
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
                      padding: const EdgeInsets.only(left: 6),
                      child: RaisedButton(
                        padding: EdgeInsets.all(16),
                        color: wood_smoke,
                        onPressed: () {
                          if (_pageController.hasClients) {
                            if (currentPageValue < 2) {
                              _pageController.animateToPage(
                                currentPageValue + 1,
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            } else {
                              Navigator.pushNamed(context, "/welcome_screen");
                            }
                          } else {
                            Navigator.pushNamed(context, "/welcome_screen");
                          }
                        },
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
          ],
        ),
        kIsWeb || Platform.isIOS
            ? Positioned(
                left: 24,
                top: 48,
                child: ButtonRoundWithShadow(
                    size: 48,
                    borderColor: wood_smoke,
                    color: white,
                    callback: () {
                      Navigator.pop(context);
                    },
                    shadowColor: wood_smoke,
                    iconPath: "assets/icons/close.svg"),
              )
            : SizedBox(),
      ],
    );
  }

  void animatePage(int page) {
    print('page is $page');
    currentPageValue = page;
    setState(() {});
  }
}
