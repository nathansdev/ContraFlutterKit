import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/contra_button.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/menu/settings.dart';
import 'package:contraflutterkit/menu/settings_item_widget.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPageThree extends StatefulWidget {
  @override
  _SettingsPageThreeState createState() => _SettingsPageThreeState();
}

class _SettingsPageThreeState extends State<SettingsPageThree> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ButtonRoundWithShadow(
                      size: 48,
                      borderColor: wood_smoke,
                      color: white,
                      callback: () {
                        Navigator.pop(context);
                      },
                      shadowColor: wood_smoke,
                      iconPath: "assets/icons/arrow_back.svg"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ContraText(
                size: 27,
                color: wood_smoke,
                alignment: Alignment.bottomCenter,
                text: "Privacy",
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: 20,
              ),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 12),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SettingsItemWidget(
                settingsItem: SettingsItem(
                    title: "Activity Status", description: "", enable: true),
              ),
              SettingsItemWidget(
                settingsItem: SettingsItem(
                    title: "Private Account",
                    description:
                        "Only people you approve can see your phots and videos.",
                    enable: false),
              ),
              SettingsItemWidget(
                settingsItem: SettingsItem(
                    title: "Location", description: "", enable: true),
              ),
              SettingsItemWidget(
                settingsItem: SettingsItem(
                    title: "Permission to tag", description: "", enable: true),
              ),
              SettingsItemWidget(
                settingsItem: SettingsItem(
                    title: "Date of year",
                    description:
                        "Do you want to show this year to public or not?",
                    enable: false),
              ),
              SettingsItemWidget(
                settingsItem: SettingsItem(
                    title: "Save to archive",
                    description:
                        "Automatically save photos and video to your archive",
                    enable: true),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24),
                child: ContraButton(
                  color: wood_smoke,
                  height: 60,
                  isPrefix: false,
                  isSuffix: false,
                  text: "Save",
                  textColor: white,
                  textSize: 21,
                  shadowColor: wood_smoke,
                  borderColor: wood_smoke,
                  callback: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
