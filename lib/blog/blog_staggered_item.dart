import 'package:contraflutterkit/blog/blog.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogStaggeredItem extends StatelessWidget {
  final BlogWithSize blog;

  const BlogStaggeredItem({this.blog});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Column(
        children: <Widget>[
          Container(
            width: blog.width,
            height: blog.height,
            alignment: Alignment.center,
            child: Center(
              child: Icon(
                Icons.image,
                color: white,
                size: 40,
              ),
            ),
            decoration: ShapeDecoration(
                color: blog.bgColor,
                shadows: [
                  BoxShadow(
                    color: wood_smoke,
                    offset: Offset(
                      0.0, // Move to right 10  horizontally
                      0.0, // Move to bottom 5 Vertically
                    ),
                  )
                ],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    side: BorderSide(color: wood_smoke, width: 2))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ContraText(
                size: 13,
                alignment: Alignment.centerLeft,
                text: blog.title,
              ),
              Icon(
                Icons.favorite_border,
                color: wood_smoke,
              )
            ],
          ),
          Text(
            blog.description,
            style: TextStyle(color: trout, fontSize: 13),
          )
        ],
      ),
    );
  }
}
