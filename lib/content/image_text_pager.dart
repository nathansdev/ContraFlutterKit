import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/circle_dot_widget.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'image_text_page.dart';

class ImageTextPager extends StatefulWidget {
  @override
  _ImageTextPagerState createState() => _ImageTextPagerState();
}

class _ImageTextPagerState extends State<ImageTextPager> {
  PageController _pageController;
  int currentPageValue = 0;
  int previousPageValue = 0;
  double _moveBar = 0.0;

  final List<Widget> introWidgetsList = [];

  @override
  void initState() {
    super.initState();
    introWidgetsList.add(ImageTextPage(
      image: "assets/images/peep_standing_right.svg",
    ));
    introWidgetsList.add(ImageTextPage(
      image: "assets/images/peep_standing_center.svg",
    ));
    introWidgetsList.add(ImageTextPage(
      image: "assets/images/peep_standing_left.svg",
    ));
    _pageController = PageController(initialPage: currentPageValue);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: PageView.builder(
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
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(24),
                  child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          for (int i = 0; i < introWidgetsList.length; i++)
                            if (i == currentPageValue) ...[
                              CircleDotWidget(
                                isActive: true,
                                color: flamingo,
                                borderColor: white,
                              )
                            ] else
                              CircleDotWidget(
                                isActive: false,
                                color: white,
                                borderColor: black,
                              ),
                        ],
                      ),
                    ),
                    ContraText(
                      text: "Contra wireframe kit",
                      size: 36,
                      alignment: Alignment.center,
                      weight: FontWeight.w800,
                      color: wood_smoke,
                      textAlign: TextAlign.center,
                    ),
                    ContraText(
                      color: trout,
                      text:
                          "Wireframe is still important for ideation. It will help you to quickly test idea.",
                      weight: FontWeight.w500,
                      alignment: Alignment.center,
                      textAlign: TextAlign.center,
                      size: 21,
                    ),
                  ]),
                ),
              )
            ],
          ),
          Positioned(
            left: 24,
            top: 56,
            child: ButtonRoundWithShadow(
              size: 48,
              iconPath: "assets/icons/close.svg",
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
