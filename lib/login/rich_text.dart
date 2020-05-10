import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';

class CustomRichText extends StatelessWidget {
  final Alignment alignment;
  final String text_one;
  final String text_second;

  const CustomRichText({this.alignment, this.text_one, this.text_second});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: text_one,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13,
                color: black,
              )),
          TextSpan(
              text: text_second,
              style: TextStyle(
                  fontSize: 13, fontWeight: FontWeight.w500, color: flamingo))
        ]),
      ),
    );
  }
}
