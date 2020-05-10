import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InputTextBoxBigger extends StatelessWidget {
  final String text;
  final String iconPath;

  const InputTextBoxBigger({this.text, this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      alignment: Alignment.center,
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: 4,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
                fontSize: 21, fontWeight: FontWeight.w500, color: wood_smoke),
            contentPadding: EdgeInsets.all(16),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: black),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: black),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: black),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            border: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: black),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            prefixIcon: Container(
              height: 128,
              width: 48,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.all(4),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 16.0),
                child: SvgPicture.asset(
                  iconPath,
                  height: 24,
                  width: 24,
                ),
              ),
            )),
      ),
    );
  }
}
