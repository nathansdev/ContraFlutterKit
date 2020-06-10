import 'package:contraflutterkit/login/login_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'blog.dart';

class BlogCardTypeThree extends StatelessWidget {
  final VoidCallback onTap;
  final Blog blog;

  const BlogCardTypeThree({this.onTap, this.blog});

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
                    4.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  side: BorderSide(color: wood_smoke, width: 2))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                    "assets/images/peep_avatar.png",
                    width: 48,
                    height: 48,
                  ),
                  Text(
                    "Lamborci Mona",
                    style: TextStyle(
                        color: wood_smoke,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Work with us and forget about others",
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
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.chat_bubble_outline,
                                color: wood_smoke,
                              ),
                              LoginText(
                                text: "324",
                                size: 13,
                                alignment: Alignment.center,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.favorite_border,
                                color: wood_smoke,
                              ),
                              LoginText(
                                text: "3.2k",
                                size: 13,
                                alignment: Alignment.center,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.share,
                          color: wood_smoke,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
