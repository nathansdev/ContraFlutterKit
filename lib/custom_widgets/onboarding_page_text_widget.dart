import 'package:flutter/cupertino.dart';

class OnboardingPageTextWidget extends StatelessWidget {
  final String title;
  final String detail;
  final Alignment alignment;

  const OnboardingPageTextWidget(
      {required this.title, required this.detail, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
    );
  }
}
