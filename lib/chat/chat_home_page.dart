import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'chat_list_page.dart';

class ChatHomePage extends StatefulWidget {
  @override
  _ChatHomePageState createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  int _currentIndex = 0;
  final List<Widget> _childrenWidgets = [
    ChatListPage(),
    ChatListPage(),
    ChatListPage(),
    ChatListPage()
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
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/ic_circle.svg"),
              title: Text("Home")),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/ic_circle.svg"),
              title: Text("Search")),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/ic_circle.svg"),
              title: Text("Chat")),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/ic_circle.svg"),
              title: Text("About")),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: wood_smoke,
        unselectedItemColor: trout,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(color: wood_smoke, opacity: 0),
        unselectedIconTheme: IconThemeData(color: trout, opacity: 0.6),
        selectedLabelStyle: TextStyle(
            color: wood_smoke, fontSize: 12, fontWeight: FontWeight.w800),
        unselectedLabelStyle:
            TextStyle(color: trout, fontSize: 12, fontWeight: FontWeight.w800),
      ),
    );
  }
}
