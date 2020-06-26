import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageTextPage extends StatefulWidget {
  String image;

  ImageTextPage({this.image});

  @override
  _ImageTextPageState createState() => _ImageTextPageState();
}

class _ImageTextPageState extends State<ImageTextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Container(
        alignment: Alignment.bottomCenter,
        child: SvgPicture.asset(
          widget.image,
          height: 500,
          width: 180,
        ),
      ),
    );
  }
}
