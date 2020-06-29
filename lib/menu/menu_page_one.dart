import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuPageOne extends StatefulWidget {
  @override
  _MenuPageOneState createState() => _MenuPageOneState();
}

class _MenuPageOneState extends State<MenuPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: CustomAppBar(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.close,
                  color: black,
                  size: 32,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ContraText(
                alignment: Alignment.bottomCenter,
                textAlign: TextAlign.center,
                color: wood_smoke,
                weight: FontWeight.w800,
                text: "Title",
                size: 24,
              ),
            ),
            Expanded(flex: 1, child: SizedBox())
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ContraText(
                    alignment: Alignment.center,
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
                    alignment: Alignment.center,
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
                    alignment: Alignment.center,
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
                    alignment: Alignment.center,
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
                    alignment: Alignment.center,
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
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                ContraText(
                  alignment: Alignment.center,
                  textAlign: TextAlign.center,
                  color: wood_smoke,
                  weight: FontWeight.w800,
                  text: "contra",
                  size: 21,
                ),
                ContraText(
                  alignment: Alignment.center,
                  textAlign: TextAlign.center,
                  color: wood_smoke,
                  weight: FontWeight.bold,
                  text: "1.0",
                  size: 21,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
