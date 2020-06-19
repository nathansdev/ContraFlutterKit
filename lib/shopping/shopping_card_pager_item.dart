import 'package:contraflutterkit/custom_widgets/button_plain.dart';
import 'package:contraflutterkit/shopping/category_item.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShoppingCardPagerItem extends StatelessWidget {
  final CategoryBig categoryBig;

  const ShoppingCardPagerItem({this.categoryBig});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: ShapeDecoration(
          color: categoryBig.bgColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              side: BorderSide(color: wood_smoke, width: 2))),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, top: 24),
                  child: Text(
                    categoryBig.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: wood_smoke,
                        fontSize: 22,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0, bottom: 24),
                  child: ButtonPlain(
                    color: wood_smoke,
                    borderColor: wood_smoke,
                    textColor: white,
                    text: "Shop now",
                    size: 96,
                    onTap: () {
                      Navigator.pushNamed(context, "/shopping_list_page_two");
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: SvgPicture.asset(
              categoryBig.image,
              width: 210,
              height: 230,
            ),
          ),
        ],
      ),
    );
  }
}
