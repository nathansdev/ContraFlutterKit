import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchText extends StatelessWidget {
  final String text;
  final String iconPath;
  final bool enable;
  final VoidCallback callback;
  final TextEditingController controller;

  const CustomSearchText(
      {this.text, this.iconPath, this.enable, this.callback, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          shadows: [
            BoxShadow(
              color: wood_smoke,
              offset: Offset(
                0.0, // Move to right 10  horizontally
                2.0, // Move to bottom 5 Vertically
              ),
            )
          ],
          color: white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              side: BorderSide(color: wood_smoke, width: 2))),
      child: TextField(
        onTap: callback,
        readOnly: !enable,
        enableInteractiveSelection: enable,
        autofocus: false,
        controller: controller,
        enableSuggestions: enable,
        decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
                fontSize: 21, fontWeight: FontWeight.w500, color: wood_smoke),
            contentPadding: EdgeInsets.all(16),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            suffixIcon: Padding(
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
