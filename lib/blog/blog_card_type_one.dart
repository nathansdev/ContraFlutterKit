import 'package:contraflutterkit/custom_widgets/button_plain_with_shadow.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'blog.dart';

class BlogCardTypeOne extends StatelessWidget {
  final VoidCallback onTap;
  final Blog blog;

  const BlogCardTypeOne({this.onTap, this.blog});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(top: 24),
          padding: EdgeInsets.all(24),
          decoration: ShapeDecoration(
              color: blog.bgColor,
              shadows: [
                BoxShadow(
                  color: wood_smoke,
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    6.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  side: BorderSide(color: wood_smoke, width: 2))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                "assets/images/peep_avatar.png",
                width: 48,
                height: 48,
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                blog.title,
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: wood_smoke),
              ),
              SizedBox(
                height: 48,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        blog.user,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: wood_smoke),
                      ),
                      Text(
                        blog.time,
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: wood_smoke),
                      )
                    ],
                  ),
                  ButtonPlainWithShadow(
                    borderColor: wood_smoke,
                    color: lightening_yellow,
                    text: "Follow",
                    height: 48,
                    size: 120,
                    callback: () {},
                    shadowColor: wood_smoke,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
