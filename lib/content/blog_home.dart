import 'package:contraflutterkit/custom_widgets/contra_button.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BlogHome extends StatefulWidget {
  @override
  _BlogHomeState createState() => _BlogHomeState();
}

class _BlogHomeState extends State<BlogHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    color: wood_smoke,
                  ),
                  Expanded(
                    flex: 1,
                    child: ContraText(
                      size: 27,
                      alignment: Alignment.bottomCenter,
                      text: "contra",
                      color: wood_smoke,
                    ),
                  ),
                  IconButton(
                    color: wood_smoke,
                    icon: Icon(Icons.notifications),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ContraText(
              color: wood_smoke,
              size: 36,
              alignment: Alignment.center,
              text: "Work with best designers",
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ContraText(
              color: trout,
              size: 21,
              alignment: Alignment.center,
              textAlign: TextAlign.center,
              text:
                  "Wireframe is still important for ideation. It will help you to quickly test idea.",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ContraButton(
              text: "More",
              size: 200,
              color: flamingo,
              height: 60,
              textColor: white,
              isSuffix: false,
              isPrefix: false,
              shadowColor: wood_smoke,
              callback: () {},
              borderColor: flamingo,
            ),
          ),
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
                      "assets/images/onboarding_image_five.svg",
                      height: 320,
                      width: 320,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
