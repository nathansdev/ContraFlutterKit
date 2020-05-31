import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class SizeWidget extends StatelessWidget {
  final Color borderColor;
  final Color shadowColor;
  final bool selected;
  final String text;
  final VoidCallback onTap;

  const SizeWidget(
      {this.borderColor,
      this.shadowColor,
      this.selected,
      this.text,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        width: 48,
        decoration: ShapeDecoration(
            shadows: [
              BoxShadow(
                color: shadowColor,
                offset: Offset(
                  0.0, // Move to right 10  horizontally
                  selected ? 4.0 : 0.0, // Move to bottom 5 Vertically
                ),
              )
            ],
            color: selected ? lightening_yellow : white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                side: BorderSide(color: borderColor, width: 2))),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 24, color: wood_smoke),
          ),
        ),
      ),
    );
  }
}
