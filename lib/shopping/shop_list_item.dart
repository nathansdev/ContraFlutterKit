import 'package:contraflutterkit/custom_widgets/cart_add_remove_button.dart';
import 'package:contraflutterkit/shopping/shop_item.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShopListItemWidget extends StatelessWidget {
  final ShopItem shopItem;

  const ShopListItemWidget({this.shopItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: SvgPicture.asset(
                shopItem.image,
                width: 100,
                height: 120,
              )),
          SizedBox(
            width: 16,
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            shopItem.by,
                            style: TextStyle(
                                color: trout,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text(
                              shopItem.name,
                              maxLines: 2,
                              style: TextStyle(
                                  color: wood_smoke,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "\$" + shopItem.price,
                      style: TextStyle(
                          color: wood_smoke,
                          fontSize: 24,
                          fontWeight: FontWeight.w800),
                    ),
                    CartAddRemoveButton()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
