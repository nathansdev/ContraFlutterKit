import 'package:contraflutterkit/shopping/shop_item.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShopGridItemWidget extends StatelessWidget {
  final ShopItem shopItem;
  final VoidCallback onTap;

  const ShopGridItemWidget({this.shopItem, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: ShapeDecoration(
                color: shopItem.bgColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    side: BorderSide(color: wood_smoke, width: 2))),
            child: SvgPicture.asset(
              shopItem.image,
              width: 155,
              height: 170,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              shopItem.name,
              maxLines: 2,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: wood_smoke, fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "\$" + shopItem.price,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                  color: trout, fontSize: 18, fontWeight: FontWeight.w800),
            ),
          ),
        ],
      ),
    );
  }
}
