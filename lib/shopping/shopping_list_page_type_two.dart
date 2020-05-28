import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/chips_select_widget.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/login_text.dart';
import 'package:contraflutterkit/shopping/shop_grid_item.dart';
import 'package:contraflutterkit/shopping/shop_item.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingListPageTwo extends StatefulWidget {
  @override
  _ShoppingListPageTwoState createState() => _ShoppingListPageTwoState();
}

class _ShoppingListPageTwoState extends State<ShoppingListPageTwo> {
  List<ShopItem> _items = List<ShopItem>();
  List<String> _filters = List<String>();

  @override
  void initState() {
    super.initState();
    _filters.add("Small");
    _filters.add("Big");
    _filters.add("Less");
    _filters.add("More");
    _items.add(ShopItem(
        image: "assets/images/shopping/product_image_1.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/product_image_2.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/product_image_3.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/product_image_4.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/product_image_1.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/product_image_2.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/product_image_3.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        by: "Company name"));
    _items.add(ShopItem(
        image: "assets/images/shopping/product_image_4.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        by: "Company name"));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    print(itemWidth / itemHeight);
    return Scaffold(
      backgroundColor: white,
      appBar: CustomAppBar(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
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
                ),
                Expanded(
                  flex: 1,
                  child: LoginText(
                    size: 27,
                    alignment: Alignment.bottomCenter,
                    text: "T-shirts",
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 20,
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 24),
              alignment: Alignment.bottomCenter,
              child: Divider(
                color: wood_smoke,
                thickness: 3,
                height: 0,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ChipsFilterWidget(
              filters: _filters,
            ),
            GridView.builder(
                padding: EdgeInsets.all(24),
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  childAspectRatio: (1 / 1.5),
                ),
                controller: new ScrollController(keepScrollOffset: false),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: _items.length,
                itemBuilder: (BuildContext context, int index) {
                  return ShopGridItemWidget(
                    shopItem: _items[index],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
