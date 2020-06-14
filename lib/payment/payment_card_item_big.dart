import 'package:contraflutterkit/custom_widgets/button_plain_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/custom_list_item.dart';
import 'package:contraflutterkit/payment/payment_type.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentCartItemBig extends StatelessWidget {
  final PaymentType type;

  const PaymentCartItemBig({this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(24),
      decoration: ShapeDecoration(
          color: type.color,
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            type.type,
            style: TextStyle(
                color: white, fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Text(
            type.price != null ? "\$" + type.price : "FREE",
            style: TextStyle(
                color: white, fontSize: 44, fontWeight: FontWeight.w800),
          ),
          CustomListItem(
            list: type.list,
          ),
          ButtonPlainWithShadow(
            text: "Select",
            height: 48,
            shadowColor: wood_smoke,
            color: wood_smoke,
            callback: () {},
            textColor: white,
            borderColor: wood_smoke,
          )
        ],
      ),
    );
  }
}
