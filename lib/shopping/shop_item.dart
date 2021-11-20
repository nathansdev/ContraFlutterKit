import 'dart:ui';

class ShopItem {
  final String name;
  final String price;
  final String by;
  final String image;
  final Color bgColor;

  const ShopItem(
      {required this.name,
      required this.price,
      required this.by,
      required this.image,
      required this.bgColor});
}
