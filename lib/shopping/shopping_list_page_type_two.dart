import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/chips_filter_widget.dart';
import 'package:contraflutterkit/shopping/shop_grid_item.dart';
import 'package:contraflutterkit/shopping/shop_item.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShoppingListPageTwo extends StatefulWidget {
  @override
  _ShoppingListPageTwoState createState() => _ShoppingListPageTwoState();
}

class _ShoppingListPageTwoState extends State<ShoppingListPageTwo> {
  List<ShopItem> _items = <ShopItem>[];
  List<String> _filters = <String>[];

  @override
  void initState() {
    super.initState();
    _filters.add("Small");
    _filters.add("Medium");
    _filters.add("Shirt");
    _filters.add("Tee");
    _items.add(ShopItem(
        image: "assets/images/shopping/coat_fur.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        bgColor: flamingo,
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/shirt_and_coat.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        bgColor: carribean_green,
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/striped_tee.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        bgColor: lightening_yellow,
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/thunder_tshirt.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        bgColor: pink_salomn,
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/coat_fur.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        bgColor: flamingo,
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/shirt_and_coat.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        bgColor: flamingo,
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/striped_tee.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        bgColor: flamingo,
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/thunder_tshirt.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        bgColor: flamingo,
        by: "Company name"));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double statusBarHeight = MediaQuery.of(context).padding.top;
    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    print(itemWidth / itemHeight);
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Column(
                      children: <Widget>[
                        Container(
                          height: kToolbarHeight + statusBarHeight,
                          color: flamingo,
                        ),
                        Container(
                          height: 400,
                          width: MediaQuery.of(context).size.width,
                          color: flamingo,
                          child: SvgPicture.asset(
                            "assets/images/shopping/peep_both.svg",
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 110,
                      color: persian_blue,
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "   Summer \n Collection",
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: ChipsFilterWidget(
                    filters: _filters,
                  ),
                ),
                GridView.builder(
                    padding: EdgeInsets.all(24),
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      childAspectRatio: (1 / 1.7),
                    ),
                    controller: new ScrollController(keepScrollOffset: false),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: _items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ShopGridItemWidget(
                        shopItem: _items[index],
                        onTap: () {
                          Navigator.pushNamed(
                              context, "/shopping_detail_page_one");
                        },
                      );
                    }),
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
