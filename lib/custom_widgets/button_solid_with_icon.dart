import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonPlainWithIcon extends StatelessWidget {
  final String text;
  final String iconPath;
  final VoidCallback callback;
  final bool isPrefix;
  final bool isSuffix;
  final Color color;
  final Color textColor;
  final double size;

  const ButtonPlainWithIcon(
      {this.text,
      this.callback,
      this.isPrefix,
      this.isSuffix,
      this.iconPath,
      this.color,
      this.size,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: size != null ? size : MediaQuery.of(context).size.width,
      child: RaisedButton(
        padding: EdgeInsets.all(16),
        color: color,
        onPressed: callback,
        textColor: textColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            isPrefix
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SvgPicture.asset(
                      iconPath,
                      color: white,
                    ),
                  )
                : SizedBox(),
            Text(
              text,
              style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
            ),
            isSuffix
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SvgPicture.asset(iconPath),
                  )
                : SizedBox()
          ],
        ),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(16.0)),
      ),
    );
  }
}
