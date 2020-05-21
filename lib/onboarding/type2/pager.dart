import 'package:contraflutterkit/custom_widgets/circle_dot_widget.dart';
import 'package:contraflutterkit/onboarding/onboard_data.dart';
import 'package:contraflutterkit/onboarding/type2/onboard_page_two.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:contraflutterkit/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPagerTypeTwo extends StatefulWidget {
  @override
  _OnboardingPagerTypeTwoState createState() => _OnboardingPagerTypeTwoState();
}

class _OnboardingPagerTypeTwoState extends State<OnboardingPagerTypeTwo> {
  PageController _pageController;
  int currentPageValue = 0;
  int previousPageValue = 0;
  double _moveBar = 0.0;
  final onboardingPageTypeTwo = OnboardPageTypeTwo();
  final List<Widget> introWidgetsList = [
    OnboardPageTypeTwo(
      data: OnboardData(
          placeHolder: "assets/images/onboarding_image_one.svg",
          title: Strings.contra_wireframe_kit,
          description: Strings.contra_wireframe_kit_page_text),
    ),
    OnboardPageTypeTwo(
      data: OnboardData(
          placeHolder: "assets/images/onboarding_image_two.svg",
          title: Strings.contra_wireframe_kit,
          description: Strings.contra_wireframe_kit_page_text),
    ),
    OnboardPageTypeTwo(
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
      alignment: AlignmentDirectional.bottomCenter,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      for (int i = 0; i < introWidgetsList.length; i++)
                        if (i == currentPageValue) ...[
                          CircleDotWidget(
                            isActive: true,
                            color: flamingo,
                            borderColor: flamingo,
                          )
                        ] else
                          CircleDotWidget(
                            isActive: false,
                            color: white,
                            borderColor: wood_smoke,
                          ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
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
                    child: Container(
                      padding: EdgeInsets.all(16),
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
                      child: SvgPicture.asset("assets/icons/arrow_forward.svg"),
                    ),
                  )
                ],
              ),
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
