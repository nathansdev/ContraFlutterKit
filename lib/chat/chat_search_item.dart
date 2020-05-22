import 'package:contraflutterkit/custom_widgets/image_round_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat.dart';

class ChatSearchItemWidget extends StatelessWidget {
  final Chat chat;
  final Color borderColor;
  final Color textColor;
  final Color color;

  const ChatSearchItemWidget(
      {this.chat, this.color, this.borderColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: RoundImageWithText(
              size: 54,
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
            flex: 3,
            child: Text(
              chat.name,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: textColor, fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              chat.time,
              style: TextStyle(
                  fontSize: 11,
                  color: santas_gray_10,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
