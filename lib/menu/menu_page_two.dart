import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuPageTwo extends StatefulWidget {
  @override
  _MenuPageTwoState createState() => _MenuPageTwoState();
}

class _MenuPageTwoState extends State<MenuPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: CustomAppBar(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              ContraText(
                alignment: Alignment.bottomCenter,
                textAlign: TextAlign.center,
                color: wood_smoke,
                weight: FontWeight.w800,
                text: "Title",
                size: 24,
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: black,
                iconSize: 34,
                icon: Icon(Icons.close),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ContraText(
                      alignment: Alignment.centerLeft,
                      textAlign: TextAlign.center,
                      color: wood_smoke,
                      weight: FontWeight.w800,
                      text: "Home",
                      size: 44,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ContraText(
                      alignment: Alignment.centerLeft,
                      textAlign: TextAlign.center,
                      color: flamingo,
                      weight: FontWeight.w800,
                      text: "Profile",
                      size: 44,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ContraText(
                      alignment: Alignment.centerLeft,
                      textAlign: TextAlign.center,
                      color: wood_smoke,
                      weight: FontWeight.w800,
                      text: "History",
                      size: 44,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ContraText(
                      alignment: Alignment.centerLeft,
                      textAlign: TextAlign.center,
                      color: wood_smoke,
                      weight: FontWeight.w800,
                      text: "Settings",
                      size: 44,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ContraText(
                      alignment: Alignment.centerLeft,
                      textAlign: TextAlign.center,
                      color: wood_smoke,
                      weight: FontWeight.w800,
                      text: "About",
                      size: 44,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ContraText(
                      alignment: Alignment.centerLeft,
                      textAlign: TextAlign.center,
                      color: trout,
                      weight: FontWeight.w800,
                      text: "Follow",
                      size: 21,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            SvgPicture.asset("assets/icons/ic_instagram.svg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/icons/ic_facebook.svg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/icons/ic_twitter.svg"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
