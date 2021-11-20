import 'package:contraflutterkit/custom_widgets/button_plain.dart';
import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/cart_add_remove_button.dart';
import 'package:contraflutterkit/custom_widgets/colors_select_widget.dart';
import 'package:contraflutterkit/custom_widgets/sizes_select_widget.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShoppingDetailPageOne extends StatefulWidget {
  @override
  _ShoppingDetailPageOneState createState() => _ShoppingDetailPageOneState();
}

class _ShoppingDetailPageOneState extends State<ShoppingDetailPageOne> {
  List<String> _filters = <String>[];
  List<Color> _colors = <Color>[];

  @override
  void initState() {
    _filters.add("XS");
    _filters.add("S");
    _filters.add("M");
    _filters.add("L");
    _colors.add(flamingo);
    _colors.add(lightening_yellow);
    _colors.add(carribean_green);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: kToolbarHeight + statusBarHeight,
                  color: lightening_yellow,
                ),
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  color: lightening_yellow,
                  child: SvgPicture.asset(
                    "assets/images/shopping/coat_fur.svg",
                    height: 290,
                    width: 300,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(24),
                  child: Column(
                    children: <Widget>[
                      ContraText(
                        alignment: Alignment.centerLeft,
                        size: 27,
                        text: "Fur Jacket Cool Look",
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "by Amedian Company",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: trout,
                              fontSize: 17,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Wireframe is still important for ideation. It will help you to quickly test idea.",
                        style: TextStyle(
                            color: trout,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 21,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "\$" + "565",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 36,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Divider(
                          color: wood_smoke,
                          thickness: 3,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ContraText(
                        alignment: Alignment.centerLeft,
                        text: "Sizes",
                        size: 15,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizesSelectWidget(
                          filters: _filters,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                ContraText(
                                  alignment: Alignment.centerLeft,
                                  text: "Colors",
                                  size: 15,
                                ),
                                ColorsSelectWidget(
                                  colors: _colors,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                ContraText(
                                  alignment: Alignment.center,
                                  text: "Quantity",
                                  size: 15,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20.0, left: 4),
                                    child: CartAddRemoveButton(),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      ButtonPlain(
                        height: 60,
                        textSize: 21,
                        text: "Add to Bag",
                        color: wood_smoke,
                        textColor: white,
                        borderColor: wood_smoke,
                        onTap: () {},
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 24,
            top: kToolbarHeight + statusBarHeight,
            child: ButtonRoundWithShadow(
                size: 48,
                borderColor: wood_smoke,
                color: white,
                callback: () {
                  Navigator.pop(context);
                },
                shadowColor: wood_smoke,
                iconPath: "assets/icons/arrow_back.svg"),
          )
        ],
      ),
    );
  }
}
