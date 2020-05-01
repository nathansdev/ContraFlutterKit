import 'package:contraflutterkit/onboarding/splash_screen.dart';
import 'package:flutter/cupertino.dart';

import 'onboard_page_four.dart';
import 'onboard_page_one.dart';
import 'onboard_page_three.dart';
import 'onboard_page_two.dart';

class OnboardPage extends StatefulWidget {
  @override
  _OnboardPageState createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  // Outside build method
  PageController controller = PageController();

  final splashPage = SlashScreenPage();
  final onboardingPageTypeOne = OnboardPageTypeOne();
  final onboardingPageTypeTwo = OnboardPageTypeTwo();
  final onboardingPageTypeThree = OnboardPageTypeThree();
  final onboardPageTypeFour = OnboardPageTypeFour();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        splashPage,
        onboardingPageTypeOne,
        onboardingPageTypeTwo,
        onboardingPageTypeThree,
        onboardPageTypeFour
      ],
      controller: controller,
    );
  }
}
