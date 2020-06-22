
import 'package:contraflutterkit/custom_widgets/contra_input_box.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16)))),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ContraText(
                  text: "Add Label",
                  alignment: Alignment.centerLeft,
                  color: wood_smoke,
                  size: 21,
                  weight: FontWeight.bold,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SvgPicture.asset(
                      "assets/icons/close.svg",
                    ))
              ],
            ),
          ),
          Container(
            height: 2,
            color: wood_smoke,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ContraInputBox(
              hintText: "Enter name",
              iconPath: "assets/icons/mail.svg",
              showPrefix: false,
            ),
          )
        ],
      ),
    );
  }
}
