import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class ColorWidget extends StatelessWidget {
  final Color borderColor;
  final Color shadowColor;
  final bool selected;
  final VoidCallback onTap;

  const ColorWidget(
      {this.borderColor, this.shadowColor, this.selected, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 34,
        width: 34,
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
            shape:
                CircleBorder(side: BorderSide(color: borderColor, width: 2))),
      ),
    );
  }
}
