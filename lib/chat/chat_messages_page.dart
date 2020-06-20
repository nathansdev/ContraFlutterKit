import 'package:contraflutterkit/chat/chat_message_item.dart';
import 'package:contraflutterkit/chat/message.dart';
import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/custom_widgets/custom_input_text.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat.dart';

class ChatMessagesPage extends StatefulWidget {
  final Chat chat;

  const ChatMessagesPage({this.chat});

  @override
  _ChatMessagesPageState createState() => _ChatMessagesPageState();
}

class _ChatMessagesPageState extends State<ChatMessagesPage> {
  List<Message> _items = List<Message>();

  @override
  void initState() {
    super.initState();
    _items.add(
        Message(name: "Charli", message: "Hi", time: "3.20 AM", isUser: false));
    _items.add(Message(
        name: "Charli",
        message: "How are you?",
        time: "3.20 AM",
        isUser: false));
    _items.add(Message(
        name: "Charli",
        message: "Its been long time",
        time: "3.20 AM",
        isUser: false));
    _items.add(Message(
        name: "Charli",
        message: "Please have a look",
        time: "3.20 AM",
        isUser: false));
    _items.add(
        Message(name: "Charli", message: "Hey", time: "4.00 AM", isUser: true));
    _items.add(Message(
        name: "Charli",
        message: "Hi, I am good",
        time: "4.00 AM",
        isUser: true));
    _items.add(Message(
        name: "Charli",
        message: "I have completed the document",
        time: "4.10 AM",
        isUser: false));
    _items.add(Message(
        name: "Charli",
        message: "Will share with you",
        time: "4.10 AM",
        isUser: false));
    _items.add(Message(
        name: "Charli", message: "Yes Please", time: "3.35 AM", isUser: true));
    _items.add(Message(
        name: "Charli",
        message: "Hello again",
        time: "3.55 AM",
        isUser: false));
    _items.add(Message(
        name: "Charli",
        message: "I have shared a file",
        time: "3.55 AM",
        isUser: false));
    _items.add(Message(
        name: "Charli",
        message: "Please take a look at it",
        time: "3.55 AM",
        isUser: false));
    _items.add(Message(
        name: "Charli", message: "Sure", time: "3.35 AM", isUser: true));
    _items.add(Message(
        name: "Charli",
        message: "i will take a look at it",
        time: "3.35 AM",
        isUser: true));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: CustomAppBar(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: ButtonRoundWithShadow(
                          size: 48,
                          borderColor: wood_smoke,
                          color: white,
                          callback: () {
                            Navigator.pop(context);
                          },
                          shadowColor: wood_smoke,
                          iconPath: "assets/icons/arrow_back.svg"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ContraText(
                    size: 27,
                    alignment: Alignment.bottomCenter,
                    text: widget.chat.name,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 20,
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 24),
              alignment: Alignment.bottomCenter,
              child: Divider(
                color: wood_smoke,
                thickness: 3,
                height: 0,
              ),
            )
          ],
        ),
      ),
      body: Container(
        color: white,
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                  reverse: false,
                  itemCount: _items.length,
                  padding: EdgeInsets.all(24),
                  itemBuilder: (BuildContext context, int index) {
                    return ChatMessageItemWidget(
                      message: _items[index],
                      borderColor: wood_smoke,
                      textColor: wood_smoke,
                      color: lightening_yellow,
                      isTimeStampSame: isTimeStampSame(index),
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
              child: CustomInputText(
                borderColor: wood_smoke,
                color: white,
                shadowColor: wood_smoke,
                text: "Type your message",
                callback: () {},
              ),
            )
          ],
        ),
      ),
    );
  }

  bool isTimeStampSame(int index) {
    bool val = false;
    if (index > 0) {
      Message current = _items[index];
      Message previous = _items[index - 1] != null ? _items[index - 1] : null;
      if (previous != null) {
        if (previous.time == current.time) {
          val = true;
        }
      }
    }
    return val;
  }
}
