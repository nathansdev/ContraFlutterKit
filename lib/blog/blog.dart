import 'dart:ui';

class Blog {
  final String title;
  final String description;
  final Color bgColor;
  final String user;
  final String time;

  const Blog(
      {this.title, this.description, this.bgColor, this.user, this.time});
}

class BlogWithSize {
  final String title;
  final String description;
  final Color bgColor;
  final double width;
  final double height;

  const BlogWithSize(
      {this.title, this.description, this.bgColor, this.width, this.height});
}
