import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class LoginText extends StatelessWidget {
  final Alignment alignment;
  final String text;
  final double size;

  const LoginText({this.alignment, this.text, this.size});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Text(
        text,
        maxLines: 1,
        style: TextStyle(
            fontSize: size == null ? 36 : size,
            fontWeight: FontWeight.w800,
            color: black),
      ),
    );
  }
}
