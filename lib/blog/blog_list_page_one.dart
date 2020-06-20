import 'package:contraflutterkit/blog/blog_card_type_one.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'blog.dart';

class BlogListPageOne extends StatefulWidget {
  @override
  _BlogListPageOneState createState() => _BlogListPageOneState();
}

class _BlogListPageOneState extends State<BlogListPageOne> {
  List<Blog> _blogs = List<Blog>();

  @override
  void initState() {
    super.initState();
    _blogs.add(Blog(
        bgColor: lavandar_bush,
        time: "11 June, 20",
        title: "Whats the new in Android 11?",
        user: "Mariano Red",
        description:
            "Wireframe is still important for ideation It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea."));
    _blogs.add(Blog(
        bgColor: foam,
        time: "9 June, 20",
        title: "Read this before you fly anywhere",
        user: "Mariano Red",
        description:
            "Wireframe is still important for ideation It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea."));
    _blogs.add(Blog(
        bgColor: foam,
        time: "1 May, 20",
        title: "The only black guy in the office",
        user: "Riya Red",
        description:
            "Wireframe is still important for ideation It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea."));
    _blogs.add(Blog(
        bgColor: fair_pink,
        time: "10 May, 20",
        title: "Whats the new design trend 2020?",
        user: "Con Red",
        description:
            "Wireframe is important for ideation It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea."));
    _blogs.add(Blog(
        bgColor: athen_gray,
        time: "30 May, 20",
        title: "7 habbits of highly effective programmers",
        user: "Melyssa Chen",
        description:
            "Wireframe is still important for ideation It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea. Wireframe is still important for ideation. It will help you to quickly test idea."));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24.0, left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ContraText(
                    size: 44,
                    alignment: Alignment.bottomCenter,
                    text: "Blogs",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: _blogs.length,
          padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
          itemBuilder: (BuildContext context, int index) {
            return BlogCardTypeOne(
              blog: _blogs[index],
              onTap: () {
                Navigator.pushNamed(context, "/blog_detail_page");
              },
            );
          }),
    );
  }
}
