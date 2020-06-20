import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/custom_widgets/custom_header.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/payment/payment_card.dart';
import 'package:contraflutterkit/payment/payment_type.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PaymentPageThree extends StatefulWidget {
  @override
  _PaymentPageThreeState createState() => _PaymentPageThreeState();
}

class _PaymentPageThreeState extends State<PaymentPageThree>
    with SingleTickerProviderStateMixin {
  List<CardDetail> _list = List<CardDetail>();
  AnimationController controller;
  PageController _pageController;
  bool isVertical = true;
  bool isChecked = false;

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
        color: lightening_yellow,
        type: "Credit Card",
        number: "8765 7875 6759 4344"));
    _list.add(CardDetail(
        user_name: "Karthi",
        color: Colors.black,
        type: "Credit Card",
        number: "8765 7875 6759 4344"));
    _list.add(CardDetail(
        user_name: "Karthi",
        color: flamingo,
        type: "Credit Card",
        number: "8765 7875 6759 4344"));
    controller = AnimationController(
        reverseDuration: Duration(milliseconds: 300),
        duration: const Duration(milliseconds: 200),
        vsync: this)
      ..addStatusListener((status) {});
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  void onChecked(bool val) {
    setState(() {
      isChecked = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 200,
        child: Row(
          children: <Widget>[
            CustomHeader(
              lineOneText: "Saved",
              lineTwotext: "Payments",
              color: wood_smoke,
              bg_color: white,
              fg_color: wood_smoke,
            ),
/*            Expanded(
              flex: 1,
              child: IconButton(
                icon: AnimatedIcon(
                  icon: AnimatedIcons.view_list,
                  progress: controller,
                ),
                onPressed: () {
                  setState(() {
                    isVertical ? controller.forward() : controller.reverse();
                    isVertical = !isVertical;
                  });
                },
              ),
            )*/
          ],
        ),
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
                      ContraText(
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
                      iconPath: "assets/icons/ic_add.svg"),
                ],
              ),
            ),
            isVertical
                ? ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    reverse: false,
                    itemCount: _list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PaymentCard(
                        card: _list[index],
                        isVertical: isVertical,
                        color: wood_smoke,
                      );
                    })
                : Container(
                    height: MediaQuery.of(context).size.height / 2.3,
                    child: PageView.builder(
                        controller: _pageController,
                        dragStartBehavior: DragStartBehavior.start,
                        scrollDirection: Axis.horizontal,
                        itemCount: _list.length,
                        itemBuilder: (BuildContext context, int index) {
                          return PaymentCard(
                            card: _list[index],
                            isVertical: false,
                            color: white,
                          );
                        }),
                  ),
          ],
        ),
      ),
    );
  }
}
