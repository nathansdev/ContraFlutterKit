import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/menu/settings.dart';
import 'package:contraflutterkit/menu/settings_list_card_item.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPageTwo extends StatefulWidget {
  @override
  _SettingsPageTwoState createState() => _SettingsPageTwoState();
}

class _SettingsPageTwoState extends State<SettingsPageTwo> {
  SettingsCardDetail detailOne;
  SettingsCardDetail detailTwo;

  List<SettingsCardItemDetail> detailsOne = List<SettingsCardItemDetail>();
  List<SettingsCardItemDetail> detailsTwo = List<SettingsCardItemDetail>();

  @override
  void initState() {
    super.initState();
    detailsOne.add(SettingsCardItemDetail(
        title: "Display and sound",
        color: lightening_yellow,
        textColor: wood_smoke));
    detailsOne.add(SettingsCardItemDetail(
        title: "Data usage", color: lightening_yellow, textColor: wood_smoke));
    detailsOne.add(SettingsCardItemDetail(
        title: "Accessibility",
        color: lightening_yellow,
        textColor: wood_smoke));
    detailsTwo.add(SettingsCardItemDetail(
        title: "Account", color: lightening_yellow, textColor: wood_smoke));
    detailsTwo.add(SettingsCardItemDetail(
        title: "Password", color: turquoise_blue, textColor: wood_smoke));
    detailsTwo.add(SettingsCardItemDetail(
        title: "Privacy", color: mona_lisa, textColor: wood_smoke));
    detailsTwo.add(SettingsCardItemDetail(
        title: "Preferences", color: lightening_yellow, textColor: wood_smoke));
    detailOne = SettingsCardDetail(
        title: "General",
        bgColor: white,
        borderColor: wood_smoke,
        items: detailsOne);
    detailTwo = SettingsCardDetail(
        title: "Security and Privacy",
        bgColor: white,
        borderColor: wood_smoke,
        items: detailsTwo);
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
                text: "Settings",
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
      body: Column(
        children: <Widget>[
          SettingsListCardItem(
            detail: detailOne,
          ),
          SettingsListCardItem(
            detail: detailTwo,
          )
        ],
      ),
    );
  }
}
