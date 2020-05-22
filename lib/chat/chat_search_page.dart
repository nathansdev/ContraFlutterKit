import 'package:contraflutterkit/chat/chat_search_item.dart';
import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/custom_widgets/custom_search_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat.dart';

class ChatSearchPage extends StatefulWidget {
  const ChatSearchPage();

  @override
  _ChatSearchPageState createState() => _ChatSearchPageState();
}

class _ChatSearchPageState extends State<ChatSearchPage> {
  List<Chat> _items = List<Chat>();
  List<Chat> _filtered = List<Chat>();
  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_searchTextValue);
    _items.add(Chat(
        name: "Charli",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Chandran",
        message: "Call me after 5",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Harray",
        message: "No food left in the kitchen",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Leonard",
        message: "Get groceries while coming",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Sheldon",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Chirag",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Charli",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Karthick",
        message: "Can we have coffe?",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Murali",
        message: "Lets meet tommorrow",
        time: "3.30 AM",
        count: "5"));
    _items.add(Chat(
        name: "Charli",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Charli",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Charli",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Charli",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
    _filtered = _items;
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  _searchTextValue() {
    print("search field: ${_textEditingController.text}");
    if (_textEditingController.text.isEmpty) {
      setState(() {
        _filtered = _items;
      });
      return;
    }
    List<Chat> tempList = new List();
    for (int i = 0; i < _filtered.length; i++) {
      if (_filtered[i]
          .name
          .toLowerCase()
          .contains(_textEditingController.text.toLowerCase())) {
        tempList.add(_filtered[i]);
      }
    }
    setState(() {
      _filtered = tempList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: CustomAppBar(
        height: 140,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: CustomSearchText(
                  iconPath: "assets/icons/ic_search.svg",
                  text: "Search with love ...",
                  enable: true,
                  callback: () {},
                  controller: _textEditingController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, bottom: 8),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ButtonRoundWithShadow(
                      size: 48,
                      borderColor: wood_smoke,
                      color: white,
                      callback: () {
                        Navigator.pop(context);
                      },
                      shadowColor: wood_smoke,
                      iconPath: "assets/icons/close.svg"),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: white,
        child: ListView.builder(
            itemCount: _filtered.length,
            padding: EdgeInsets.all(24),
            itemBuilder: (BuildContext context, int index) {
              return ChatSearchItemWidget(
                chat: _filtered[index],
                borderColor: wood_smoke,
                textColor: wood_smoke,
                color: lightening_yellow,
              );
            }),
      ),
    );
  }
}
