import 'dart:ui';

class Category {
  final String name;
  final Color bgColor;
  final Color startColor;

  const Category(
      {required this.name, required this.startColor, required this.bgColor});
}

class CategoryBig {
  final String name;
  final String image;
  final Color bgColor;
  final Color startColor;

  const CategoryBig(
      {required this.name,
      required this.image,
      required this.startColor,
      required this.bgColor});
}
