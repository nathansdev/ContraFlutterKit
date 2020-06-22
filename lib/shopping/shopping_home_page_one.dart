import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/custom_widgets/custom_search_text.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/shopping/shop_card_item.dart';
import 'package:contraflutterkit/shopping/shop_item.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingHomePageOne extends StatefulWidget {
  @override
  _ShoppingHomePageOneState createState() => _ShoppingHomePageOneState();
}

class _ShoppingHomePageOneState extends State<ShoppingHomePageOne> {
  List<ShopItem> _items = List<ShopItem>();
  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
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
                  Icon(
                    Icons.menu,
                    color: wood_smoke,
                  ),
                  Expanded(
                    flex: 1,
                    child: ContraText(
                      size: 27,
                      alignment: Alignment.bottomCenter,
                      text: "T-shirts",
                    ),
                  ),
                  IconButton(
                    color: wood_smoke,
                    icon: Icon(Icons.notifications),
                    onPressed: () {},
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
                enable: false,
                callback: () {
                  Navigator.pushNamed(context, "/shopping_list_page_one");
                },
                controller: _textEditingController,
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                reverse: false,
                itemCount: _items.length,
                itemBuilder: (BuildContext context, int index) {
                  return ShopCardItemWidget(
                    shopItem: _items[index],
                    onTap: () {
                      Navigator.pushNamed(context, "/shopping_detail_page_two");
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}
