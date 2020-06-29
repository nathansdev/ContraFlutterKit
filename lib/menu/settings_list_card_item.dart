import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/menu/settings.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/material.dart';

class SettingsListCardItem extends StatelessWidget {
  SettingsCardDetail detail;

  SettingsListCardItem({this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24),
      child: Column(
        children: <Widget>[
          ContraText(
            color: trout,
            text: detail.title,
            textAlign: TextAlign.left,
            weight: FontWeight.bold,
            size: 21,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            height: 220,
            decoration: ShapeDecoration(
                color: detail.bgColor,
                shadows: [BoxShadow(offset: Offset(0, 4))],
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: detail.borderColor, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(16)))),
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: ShapeDecoration(
                              shape: CircleBorder(), color: lightening_yellow),
                          width: 24,
                          height: 24,
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: ContraText(
                          text: detail.items[index].title,
                          textAlign: TextAlign.left,
                          weight: FontWeight.w800,
                          size: 17,
                          alignment: Alignment.centerLeft,
                          color: wood_smoke,
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: wood_smoke,
                        ),
                        flex: 1,
                      )
                    ],
                  ),
                );
              },
              itemCount: detail.items.length,
            ),
          )
        ],
      ),
    );
  }
}
