import 'package:contraflutterkit/shopping/shop_item.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShopCardSmallItemWidget extends StatelessWidget {
  final ShopItem shopItem;
  final VoidCallback onTap;

  const ShopCardSmallItemWidget({this.shopItem, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 120,
              height: 117,
              decoration: ShapeDecoration(
                  color: shopItem.bgColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      side: BorderSide(color: wood_smoke, width: 2))),
              child: SvgPicture.asset(
                shopItem.image,
                width: 50,
                height: 50,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(vertical: 2),
              child: Text(
                shopItem.name,
                maxLines: 2,
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: wood_smoke,
                    fontSize: 15,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(vertical: 1),
              child: Text(
                "\$" + shopItem.price,
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: trout, fontSize: 13, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
