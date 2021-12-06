import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChipWidget extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback onTap;

  const ChipWidget(
      {required this.text, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 48,
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                text,
                style:
                    TextStyle(color: wood_smoke, fontWeight: FontWeight.bold),
              ),
              selected ? SvgPicture.asset("assets/icons/close.svg") : SizedBox()
            ],
          ),
          decoration: ShapeDecoration(
              color: selected ? pastel_pink : white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(44)),
                  side: BorderSide(color: wood_smoke, width: 2)))),
    );
  }
}
