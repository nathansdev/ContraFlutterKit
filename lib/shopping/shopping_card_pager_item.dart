import 'package:contraflutterkit/custom_widgets/button_plain.dart';
import 'package:contraflutterkit/shopping/category_item.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class ShoppingCardPagerItem extends StatelessWidget {
  final CategoryBig categoryBig;

  const ShoppingCardPagerItem({this.categoryBig});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: ShapeDecoration(
          color: categoryBig.bgColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              side: BorderSide(color: wood_smoke, width: 2))),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                categoryBig.name,
                style: TextStyle(
                    color: wood_smoke,
                    fontSize: 24,
                    fontWeight: FontWeight.w800),
              ),
              ButtonPlain(
                color: wood_smoke,
                borderColor: wood_smoke,
                textColor: white,
                text: "Shop now",
                size: 96,
              )
            ],
          ),
          SvgPicture.asset(
            categoryBig.image,
            width: 210,
            height: 230,
          ),
        ],
      ),
    );
  }
}
