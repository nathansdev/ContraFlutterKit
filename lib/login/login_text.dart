import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class LoginText extends StatelessWidget {
  final Alignment alignment;
  final String text;

  const LoginText({this.alignment, this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Text(
        text,
        style:
            TextStyle(fontSize: 36, fontWeight: FontWeight.w800, color: black),
      ),
    );
  }
}
