import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentCartItem extends StatelessWidget {
  final Color bgColor;
  final String price;
  final String type;

  const PaymentCartItem({this.bgColor, this.price, this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      padding: EdgeInsets.all(24),
      decoration: ShapeDecoration(
          color: bgColor,
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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ContraText(
              alignment: Alignment.center,
              text: price,
              size: 44,
            ),
            Text(
              type,
              style: TextStyle(
                  color: wood_smoke, fontSize: 21, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
