import 'package:contraflutterkit/payment/payment_type.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  final CardDetail card;

  const PaymentCard({this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(left: 24, right: 24, bottom: 16),
      decoration: ShapeDecoration(
          color: card.color,
          shadows: [
            BoxShadow(
              color: wood_smoke,
              offset: Offset(
                0.0, // Move to right 10  horizontally
                2.0, // Move to bottom 5 Vertically
              ),
            )
          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              side: BorderSide(color: wood_smoke, width: 2))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            card.type,
            style: TextStyle(color: white, fontSize: 21),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              card.number,
              style: TextStyle(
                  color: white, fontWeight: FontWeight.w800, fontSize: 21),
            ),
          ),
          Text(
            "CARD HOLDER",
            style: TextStyle(color: white, fontSize: 12),
          ),
          Text(
            card.user_name,
            style: TextStyle(
                color: white, fontWeight: FontWeight.w800, fontSize: 21),
          )
        ],
      ),
    );
  }
}
