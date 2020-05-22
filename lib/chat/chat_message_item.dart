import 'package:contraflutterkit/chat/message.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatMessageItemWidget extends StatelessWidget {
  final Message message;
  final Color borderColor;
  final Color textColor;
  final Color color;
  final bool isTimeStampSame;

  const ChatMessageItemWidget(
      {this.message,
      this.color,
      this.isTimeStampSame,
      this.borderColor,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    print(isTimeStampSame);
    return Container(
      padding: isTimeStampSame
          ? EdgeInsets.symmetric(vertical: 4)
          : EdgeInsets.symmetric(
              vertical: 16,
            ),
      child: Row(
        mainAxisAlignment:
            message.isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: <Widget>[
          !message.isUser
              ? isTimeStampSame
                  ? SizedBox(
                      width: 48,
                      height: 48,
                    )
                  : Image.asset(
                      "assets/images/peep_avatar.png",
                      width: 48,
                      height: 48,
                    )
              : SizedBox(),
          SizedBox(
            width: 12,
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: ShapeDecoration(
                  color: message.isUser ? caribbean_color : color,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      side: BorderSide(color: borderColor, width: 2))),
              child: Text(
                message.message,
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
