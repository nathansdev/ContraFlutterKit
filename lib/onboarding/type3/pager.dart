import 'package:contraflutterkit/custom_widgets/circle_dot_widget.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:contraflutterkit/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../onboard_data.dart';
import 'onboard_page_three.dart';

class OnboardingPagerTypeThree extends StatefulWidget {
  @override
  _OnboardingPagerTypeThreeState createState() =>
      _OnboardingPagerTypeThreeState();
}

class _OnboardingPagerTypeThreeState extends State<OnboardingPagerTypeThree> {
  PageController _pageController;
  int currentPageValue = 0;
  int previousPageValue = 0;
  double _moveBar = 0.0;

  final onboardingPageTypeOne = OnboardPageTypeThree();
  final List<Widget> introWidgetsList = [
    OnboardPageTypeThree(
      data: OnboardData(
          placeHolder: "assets/images/onboarding_image_one.svg",
          title: Strings.contra_wireframe_kit,
          description: Strings.contra_wireframe_kit_page_text),
    ),
    OnboardPageTypeThree(
      data: OnboardData(
          placeHolder: "assets/images/onboarding_image_two.svg",
          title: Strings.contra_wireframe_kit,
          description: Strings.contra_wireframe_kit_page_text),
    ),
    OnboardPageTypeThree(
      data: OnboardData(
          placeHolder: "assets/images/onboarding_image_three.svg",
          title: Strings.contra_wireframe_kit,
          description: Strings.contra_wireframe_kit_page_text),
    ),
  ];

  @override
  void initState() {
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
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(24),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          for (int i = 0; i < introWidgetsList.length; i++)
                            if (i == currentPageValue) ...[
                              CircleDotWidget(
                                isActive: true,
                                color: white,
                                borderColor: white,
                              )
                            ] else
                              CircleDotWidget(
                                isActive: false,
                                color: flamingo,
                                borderColor: white,
                              ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: ButtonTheme(
                        minWidth: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          padding: EdgeInsets.all(16),
                          color: wood_smoke,
                          onPressed: () {
                            Navigator.pushNamed(context, "/welcome_screen");
                          },
                          textColor: white,
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                                fontSize: 21.0, fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(16.0)),
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        )
      ],
    );
  }

  void animatePage(int page) {
    print('page is $page');

    currentPageValue = page;

    if (previousPageValue == 0) {
      previousPageValue = currentPageValue;
      _moveBar = _moveBar + 0.14;
    } else {
      if (previousPageValue < currentPageValue) {
        previousPageValue = currentPageValue;
        _moveBar = _moveBar + 0.14;
      } else {
        previousPageValue = currentPageValue;
        _moveBar = _moveBar - 0.14;
      }
    }

    setState(() {});
  }
}
