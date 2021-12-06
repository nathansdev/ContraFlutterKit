import 'dart:ui';

class Blog {
  final String title;
  final String description;
  final Color bgColor;
  final String user;
  final String time;

  const Blog(
      {required this.title,
      required this.description,
      required this.bgColor,
      required this.user,
      required this.time});
}

class BlogWithSize {
  final String title;
  final String description;
  final Color bgColor;
  final double width;
  final double height;

  const BlogWithSize(
      {required this.title,
      required this.description,
      required this.bgColor,
      required this.width,
      required this.height});
}
