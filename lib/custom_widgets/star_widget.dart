import 'package:contraflutterkit/shopping/category_item.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
  final Category category;

  const StartWidget({this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            width: 80,
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
                color: category.bgColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    side: BorderSide(color: wood_smoke, width: 2))),
            child: Icon(
              Icons.star_border,
              size: 32,
              color: category.startColor,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            category.name,
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17),
          )
        ],
      ),
    );
  }
}
