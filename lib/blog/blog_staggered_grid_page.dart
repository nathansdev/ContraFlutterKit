import 'package:contraflutterkit/blog/blog_staggered_item.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/custom_widgets/custom_search_text.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'blog.dart';

class BlogStaggeredGridPage extends StatefulWidget {
  @override
  _BlogStaggeredGridPageState createState() => _BlogStaggeredGridPageState();
}

class _BlogStaggeredGridPageState extends State<BlogStaggeredGridPage> {
  List<BlogWithSize> _blogs = <BlogWithSize>[];
  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _blogs.add(BlogWithSize(
        title: "Work with us",
        bgColor: dandelion,
        width: 150,
        height: 200,
        description: "Balanced"));
    _blogs.add(BlogWithSize(
        title: "Work with us",
        bgColor: dandelion,
        width: 155,
        height: 131,
        description: "Balanced"));
    _blogs.add(BlogWithSize(
        title: "Work with us",
        bgColor: dandelion,
        width: 155,
        height: 230,
        description: "Balanced"));
    _blogs.add(BlogWithSize(
        title: "Work with us",
        bgColor: dandelion,
        width: 155,
        height: 220,
        description: "Balanced"));
    _blogs.add(BlogWithSize(
        title: "Work with us",
        bgColor: dandelion,
        width: 155,
        height: 218,
        description: "Balanced"));
    _blogs.add(BlogWithSize(
        title: "Work with us",
        bgColor: dandelion,
        width: 150,
        height: 200,
        description: "Balanced"));
    _blogs.add(BlogWithSize(
        title: "Work with us",
        bgColor: dandelion,
        width: 150,
        height: 200,
        description: "Balanced"));
    _blogs.add(BlogWithSize(
        title: "Work with us",
        bgColor: dandelion,
        width: 150,
        height: 200,
        description: "Balanced"));
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
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    color: wood_smoke,
                  ),
                  Expanded(
                    flex: 1,
                    child: ContraText(
                      size: 27,
                      alignment: Alignment.bottomCenter,
                      text: "contra",
                    ),
                  ),
                  IconButton(
                    color: wood_smoke,
                    icon: Icon(Icons.notifications),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: CustomSearchText(
                iconPath: "assets/icons/ic_search.svg",
                text: "Search with love ...",
                enable: true,
                callback: () {},
                controller: _textEditingController,
              ),
            ),
            StaggeredGridView.countBuilder(
                padding: const EdgeInsets.all(4.0),
                staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(2, index.isEven ? 2 : 1),
                crossAxisCount: 4,
                mainAxisSpacing: 4.0,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 4.0,
                itemCount: _blogs.length,
                itemBuilder: (BuildContext context, int index) {
                  return BlogStaggeredItem(
                    blog: _blogs[index],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
