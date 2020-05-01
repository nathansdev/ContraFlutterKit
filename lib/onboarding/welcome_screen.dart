import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: persian_blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/icons/logo_mark.svg",
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Welcome To Contra Flutter Kit",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 36, color: selago, fontWeight: FontWeight.w800),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "coded by",
                    style: TextStyle(fontSize: 18, color: selago),
                  ),
                ),
                RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "@nathansdev",
                        style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ))
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
