import 'package:contraflutterkit/custom_widgets/button_plain_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/payment/payment_card_item_big.dart';
import 'package:contraflutterkit/payment/payment_type.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PaymentPageTwo extends StatefulWidget {
  @override
  _PaymentPageTwoState createState() => _PaymentPageTwoState();
}

class _PaymentPageTwoState extends State<PaymentPageTwo>
    with SingleTickerProviderStateMixin {
  List<PaymentType> types = List<PaymentType>();
  List<String> list = List<String>();
  AnimationController controller;
  bool isVertical = true;
  bool isChecked = false;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    list.add("Get 24x7 Support");
    list.add("120+ Screens");
    list.add("120+ Screens");
    types.add(PaymentType(
        type: "POPULAR",
        list: list,
        color: flamingo,
        buttonColor: wood_smoke,
        buttonTextColor: white));
    types.add(PaymentType(
        price: "34",
        type: "TRENDING",
        list: list,
        color: lightening_yellow,
        buttonColor: wood_smoke,
        buttonTextColor: white));
    types.add(PaymentType(
        price: "25",
        type: "POPULAR",
        list: list,
        color: Colors.black,
        buttonColor: white,
        buttonTextColor: Colors.black));
    types.add(PaymentType(
        price: "34",
        type: "CLASSIC",
        list: list,
        color: flamingo,
        buttonColor: wood_smoke,
        buttonTextColor: white));
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
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  width: 24,
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: ButtonRoundWithShadow(
                        size: 48,
                        borderColor: wood_smoke,
                        color: white,
                        callback: () {
                          Navigator.pop(context);
                        },
                        shadowColor: wood_smoke,
                        iconPath: "assets/icons/arrow_back.svg"),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: ContraText(
                    size: 27,
                    alignment: Alignment.bottomCenter,
                    text: "Payments",
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: IconButton(
                      icon: AnimatedIcon(
                        icon: AnimatedIcons.view_list,
                        progress: controller,
                      ),
                      onPressed: () {
                        setState(() {
                          isVertical
                              ? controller.forward()
                              : controller.reverse();
                          isVertical = !isVertical;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            isVertical
                ? ListView.builder(
                    padding: EdgeInsets.only(top: 12),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    reverse: false,
                    scrollDirection: Axis.vertical,
                    itemCount: types.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PaymentCartItemBig(
                          type: types[index], isVertical: true);
                    })
                : Container(
                    height: MediaQuery.of(context).size.height / 2,
                    child: PageView.builder(
                        controller: _pageController,
                        dragStartBehavior: DragStartBehavior.start,
                        scrollDirection: Axis.horizontal,
                        itemCount: types.length,
                        itemBuilder: (BuildContext context, int index) {
                          return PaymentCartItemBig(
                              type: types[index], isVertical: false);
                        }),
                  ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                    onChanged: onChecked,
                    value: isChecked,
                  ),
                  Expanded(
                    child: Text(
                      "I read. Please read following terms and condition if you want to go further. Otherwise we will not give you any refund.",
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ButtonPlainWithShadow(
                text: "Subscribe now",
                height: 48,
                shadowColor: persian_blue,
                color: persian_blue,
                callback: () {},
                textColor: white,
                borderColor: persian_blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
