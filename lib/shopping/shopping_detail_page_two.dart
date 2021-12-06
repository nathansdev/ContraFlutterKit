import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/button_solid_with_icon.dart';
import 'package:contraflutterkit/custom_widgets/pager_image_view.dart';
import 'package:contraflutterkit/custom_widgets/sizes_select_widget.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingDetailPageTwo extends StatefulWidget {
  @override
  _ShoppingDetailPageTwoState createState() => _ShoppingDetailPageTwoState();
}

class _ShoppingDetailPageTwoState extends State<ShoppingDetailPageTwo> {
  List<String> _filters = <String>[];
  List<String> _images = <String>[];
  List<Color> _colors = <Color>[];

  @override
  void initState() {
    _filters.add("XS");
    _filters.add("S");
    _filters.add("M");
    _filters.add("L");
    _images.add("assets/images/shopping/coat_fur.svg");
    _images.add("assets/images/shopping/striped_tee.svg");
    _images.add("assets/images/shopping/shirt_and_coat.svg");
    _colors.add(lightening_yellow);
    _colors.add(Colors.red);
    _colors.add(carribean_green);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: flamingo,
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              Container(
                height: kToolbarHeight + statusBarHeight,
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: PagerImageView(
                    images: _images,
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 10),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Flash T-Shirt",
                          style: TextStyle(
                              color: white,
                              fontSize: 36,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Wireframe is still important for ideation. It will help you to quickly test idea.",
                        style: TextStyle(
                            color: athens_gray,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizesSelectWidget(
                          filters: _filters,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text(
                              "\$" + "565",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          ButtonPlainWithIcon(
                            size: 100,
                            text: "Buy now",
                            color: wood_smoke,
                            textColor: white,
                            isSuffix: true,
                            isPrefix: false,
                            callback: () {},
                            iconPath: "assets/icons/arrow_next.svg",
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
