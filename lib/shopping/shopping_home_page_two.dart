import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/custom_widgets/custom_search_text.dart';
import 'package:contraflutterkit/custom_widgets/star_widget.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/shopping/shop_card_item_small.dart';
import 'package:contraflutterkit/shopping/shop_item.dart';
import 'package:contraflutterkit/shopping/shopping_card_pager.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category_item.dart';

class ShoppingHomePageTwo extends StatefulWidget {
  @override
  _ShoppingHomePageTwoState createState() => _ShoppingHomePageTwoState();
}

class _ShoppingHomePageTwoState extends State<ShoppingHomePageTwo> {
  List<ShopItem> _items = List<ShopItem>();
  List<Category> _categories = List<Category>();
  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _items.add(ShopItem(
        image: "assets/images/shopping/coat_fur.svg",
        name: "Flash tee",
        price: "189",
        bgColor: flamingo,
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/shirt_and_coat.svg",
        name: "Flash tee",
        price: "189",
        bgColor: carribean_green,
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/striped_tee.svg",
        name: "Flash tee",
        price: "189",
        bgColor: lightening_yellow,
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/thunder_tshirt.svg",
        name: "Flash tee",
        price: "189",
        bgColor: pink_salomn,
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/coat_fur.svg",
        name: "Flash tee",
        price: "189",
        bgColor: flamingo,
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/shirt_and_coat.svg",
        name: "Flash tee",
        price: "189",
        bgColor: flamingo,
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/striped_tee.svg",
        name: "Flash tee",
        price: "189",
        bgColor: flamingo,
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/thunder_tshirt.svg",
        name: "Flash tee",
        price: "189",
        bgColor: flamingo,
        by: "Company name"));

    _categories.add(
        Category(bgColor: bareley_white, startColor: wood_smoke, name: "Men"));
    _categories.add(
        Category(bgColor: fair_pink, startColor: wood_smoke, name: "Woman"));
    _categories
        .add(Category(bgColor: foam, startColor: wood_smoke, name: "Kid"));
    _categories.add(Category(
        bgColor: bareley_white, startColor: wood_smoke, name: "Adult"));
    _categories
        .add(Category(bgColor: fair_pink, startColor: wood_smoke, name: "Men"));
    _categories
        .add(Category(bgColor: foam, startColor: wood_smoke, name: "Men"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: CustomAppBar(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: ContraText(
                      size: 44,
                      alignment: Alignment.bottomCenter,
                      text: "Shop Yay",
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        "assets/images/peep_avatar.png",
                        width: 48,
                        height: 48,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: CustomSearchText(
                iconPath: "assets/icons/ic_search.svg",
                text: "Search with love ...",
                enable: true,
                callback: () {},
                controller: _textEditingController,
              ),
            ),
            Container(
              height: 180,
              child: ListView.builder(
                  padding: EdgeInsets.all(12),
                  scrollDirection: Axis.horizontal,
                  itemCount: _categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return StartWidget(
                      category: _categories[index],
                    );
                  }),
            ),
            Container(height: 250, child: ShoppingCardPager()),
            Container(
              height: 180,
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  scrollDirection: Axis.horizontal,
                  itemCount: _items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ShopCardSmallItemWidget(
                      shopItem: _items[index],
                      onTap: () {
                        Navigator.pushNamed(
                            context, "/shopping_detail_page_one");
                      },
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
