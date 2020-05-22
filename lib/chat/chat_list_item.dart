import 'package:contraflutterkit/custom_widgets/badge_text.dart';
import 'package:contraflutterkit/custom_widgets/image_round_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat.dart';

class ChatListItemWidget extends StatelessWidget {
  final Chat chat;
  final VoidCallback callback;

  const ChatListItemWidget({this.chat, this.callback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: RoundImageWithText(
                size: 48,
                text: chat.name.substring(0, 1),
                color: dandelion,
                borderColor: wood_smoke,
                shadowColor: wood_smoke,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    chat.name,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 21,
                        color: wood_smoke,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    chat.message,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: trout,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    chat.time,
                    style: TextStyle(
                        fontSize: 11,
                        color: santas_gray_10,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  chat.count.isNotEmpty
                      ? BadgeText(
                          text: chat.count,
                          color: flamingo,
                        )
                      : SizedBox()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
