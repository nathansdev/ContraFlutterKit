import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/custom_widgets/custom_header.dart';
import 'package:contraflutterkit/login/login_text.dart';
import 'package:contraflutterkit/payment/payment_card.dart';
import 'package:contraflutterkit/payment/payment_type.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentPageThree extends StatefulWidget {
  @override
  _PaymentPageThreeState createState() => _PaymentPageThreeState();
}

class _PaymentPageThreeState extends State<PaymentPageThree> {
  List<CardDetail> _list = List<CardDetail>();

  @override
  void initState() {
    super.initState();
    _list.add(CardDetail(
        user_name: "Karthi",
        color: Colors.blue,
        type: "Credit Card",
        number: "8765 7875 6759 4344"));
    _list.add(CardDetail(
        user_name: "Karthi",
        color: Colors.yellow,
        type: "Credit Card",
        number: "8765 7875 6759 4344"));
    _list.add(CardDetail(
        user_name: "Karthi",
        color: Colors.black,
        type: "Credit Card",
        number: "8765 7875 6759 4344"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 200,
        child: CustomHeader(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(24),
              margin: EdgeInsets.only(left: 24, right: 24, bottom: 24),
              decoration: ShapeDecoration(
                  color: athens,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Balance",
                        style: TextStyle(
                            color: wood_smoke,
                            fontSize: 21,
                            fontWeight: FontWeight.w500),
                      ),
                      LoginText(
                        alignment: Alignment.centerLeft,
                        text: "\$" + "5,666",
                      )
                    ],
                  ),
                  ButtonRoundWithShadow(
                      size: 48,
                      borderColor: wood_smoke,
                      color: white,
                      callback: () {
                        Navigator.pop(context);
                      },
                      shadowColor: wood_smoke,
                      iconPath: "assets/icons/add.svg"),
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                reverse: false,
                itemCount: _list.length,
                itemBuilder: (BuildContext context, int index) {
                  return PaymentCard(
                    card: _list[index],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
