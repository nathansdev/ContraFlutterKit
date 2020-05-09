import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPasswordText extends StatelessWidget {
  final String text;
  final String iconPath;

  const LoginPasswordText({this.text, this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: '\u25CF \u25CF \u25CF \u25CF \u25CF \u25CF',
            hintStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: wood_smoke,
            ),
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
            prefixIcon: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SvgPicture.asset(
                iconPath,
                height: 24,
                width: 24,
              ),
            )),
      ),
    );
  }
}
