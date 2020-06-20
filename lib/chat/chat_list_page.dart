import 'package:contraflutterkit/chat/chat_messages_page.dart';
import 'package:contraflutterkit/chat/chat_search_page.dart';
import 'package:contraflutterkit/custom_widgets/custom_search_text.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat.dart';
import 'chat_list_item.dart';

class ChatListPage extends StatefulWidget {
  @override
  _ChatListPageState createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  List<Chat> _items = List<Chat>();
  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();

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
        count: ""));
    _items.add(Chat(
        name: "Leonard",
        message: "Get groceries while coming",
        time: "3.30 AM",
        count: ""));
    _items.add(Chat(
        name: "Sheldon",
        message: "Please have a look",
        time: "3.30 AM",
        count: ""));
    _items.add(Chat(
        name: "Chirag",
        message: "Please have a look",
        time: "3.30 AM",
        count: "2"));
    _items.add(Chat(
        name: "Charli",
        message: "Please have a look",
        time: "3.30 AM",
        count: "4"));
    _items.add(Chat(
        name: "Karthick",
        message: "Can we have coffe?",
        time: "3.30 AM",
        count: "4"));
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
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 56,
              ),
              ContraText(
                alignment: Alignment.centerLeft,
                text: "Chat",
              ),
              SizedBox(
                height: 24,
              ),
              CustomSearchText(
                iconPath: "assets/icons/ic_search.svg",
                text: "Search with love ...",
                enable: false,
                callback: () {
                  _launchSearchMessage();
                },
                controller: _textEditingController,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ChatListItemWidget(
                      chat: _items[index],
                      callback: () {
                        _launchChatMessage(_items[index]);
                      },
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }

  _launchChatMessage(Chat item) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return ChatMessagesPage(
        chat: item,
      );
    }));
  }

  _launchSearchMessage() {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return ChatSearchPage();
    }));
  }
}
