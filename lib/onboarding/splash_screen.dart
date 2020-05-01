import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SlashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: persian_blue,
      child: Stack(
        children: <Widget>[
          Container(
            child: Center(
              child: SvgPicture.asset(
                "assets/icons/logo_mark.svg",
                width: 150,
                height: 150,
              ),
            ),
          )
        ],
      ),
    );
  }
}
