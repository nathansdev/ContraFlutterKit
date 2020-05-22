import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomInputText extends StatelessWidget {
  final String text;
  final Color borderColor;
  final Color shadowColor;
  final Color color;
  final VoidCallback callback;


  const CustomInputText(
      {this.text,
      this.borderColor,
      this.color,
      this.shadowColor,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(60)),
              side: BorderSide(color: borderColor, width: 2))),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: text,
                hintStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: santas_gray),
                contentPadding: EdgeInsets.all(16),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          IconButton(
            color: wood_smoke,
            icon: Icon(Icons.keyboard_voice),
            onPressed: () {},
          ),
          IconButton(
            color: wood_smoke,
            icon: Icon(Icons.send),
            onPressed: callback,
          )
        ],
      ),
    );
  }
}
