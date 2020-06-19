import 'package:contraflutterkit/custom_widgets/button_plain_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/custom_list_item.dart';
import 'package:contraflutterkit/payment/payment_type.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentCartItemBig extends StatelessWidget {
  final PaymentType type;
  final bool isVertical;

  const PaymentCartItemBig({this.type, this.isVertical});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isVertical ? MediaQuery.of(context).size.width : 250,
      margin: isVertical
          ? EdgeInsets.symmetric(horizontal: 24, vertical: 12)
          : EdgeInsets.only(right: 12, top: 24, bottom: 12),
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
          isVertical
              ? CustomListItem(
                  list: type.list,
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    "You don’t think you should give some dollar to use our service.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: white, fontSize: 17),
                  ),
                ),
          ButtonPlainWithShadow(
            text: "Select",
            height: 48,
            shadowColor: type.buttonColor,
            color: type.buttonColor,
            callback: () {},
            textColor: type.buttonTextColor,
            borderColor: type.buttonColor,
          ),
        ],
      ),
    );
  }
}
