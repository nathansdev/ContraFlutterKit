import 'package:contraflutterkit/custom_widgets/contra_input_box.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        height: 200,
        color: Color(0xFF737373),
        // This line set the transparent background
        child: Container(
          height: 200,
          decoration: ShapeDecoration(
              color: white,
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
                      text: "Label",
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
        ),
      ),
    );
  }
}
