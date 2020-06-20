import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'blog.dart';

class BlogCardTypeThree extends StatelessWidget {
  final VoidCallback onTap;
  final Blog blog;
  final bool isSubType;

  const BlogCardTypeThree({this.onTap, this.blog, this.isSubType});

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
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    blog.user,
                    style: TextStyle(
                        color: wood_smoke,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
              isSubType
                  ? Container(
                      height: 200,
                      margin: EdgeInsets.symmetric(vertical: 24),
                      width: MediaQuery.of(context).size.width,
                      decoration: ShapeDecoration(
                        shadows: [
                          BoxShadow(
                            color: Colors.red,
                            offset: Offset(
                              0.0, // Move to right 10  horizontally
                              0.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                        color: carribean_green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            side: BorderSide(color: wood_smoke, width: 2)),
                      ),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: <Widget>[
                          Positioned.fill(
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: SvgPicture.asset(
                                      "assets/images/peep_lady_two.svg"))),
                          Positioned.fill(
                              child: Align(
                                  alignment: Alignment.center,
                                  child: SvgPicture.asset(
                                      "assets/images/peep_man_one.svg"))),
                          Positioned.fill(
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: SvgPicture.asset(
                                      "assets/images/peep_lady_one.svg")))
                        ],
                      ),
                    )
                  : Container(
                      child: Column(
                        children: <Widget>[
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
                        ],
                      ),
                    ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 2,
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
                              SizedBox(
                                width: 10,
                              ),
                              ContraText(
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
                              SizedBox(
                                width: 10,
                              ),
                              ContraText(
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
