import 'package:contraflutterkit/blog/blog_list_page_four.dart';
import 'package:contraflutterkit/blog/blog_list_page_one.dart';
import 'package:contraflutterkit/blog/blog_list_page_two.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/material.dart';

import 'blog_list_page_three.dart';

class BlogHomePage extends StatefulWidget {
  @override
  _BlogHomePageState createState() => _BlogHomePageState();
}

class _BlogHomePageState extends State<BlogHomePage> {
  int _currentIndex = 0;
  final List<Widget> _childrenWidgets = [
    BlogListPageOne(),
    BlogListPageTwo(),
    BlogListPageThree(),
    BlogListPageFour(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _childrenWidgets.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text("Search")),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble), title: Text("Chat")),
          BottomNavigationBarItem(icon: Icon(Icons.info), title: Text("About")),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: wood_smoke,
        unselectedItemColor: trout,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(color: wood_smoke, opacity: 1),
        unselectedIconTheme: IconThemeData(color: trout, opacity: 0.6),
        selectedLabelStyle: TextStyle(
            color: wood_smoke, fontSize: 12, fontWeight: FontWeight.w800),
        unselectedLabelStyle:
            TextStyle(color: trout, fontSize: 12, fontWeight: FontWeight.w800),
      ),
    );
  }
}
