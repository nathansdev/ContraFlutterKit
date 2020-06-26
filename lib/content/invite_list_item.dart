import 'package:contraflutterkit/content/user.dart';
import 'package:contraflutterkit/custom_widgets/contra_button.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InviteListItem extends StatelessWidget {
  InviteDetail inviteDetail;

  InviteListItem({this.inviteDetail});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 12),
      decoration: ShapeDecoration(
          color: white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)))),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              inviteDetail.profile,
              width: 60,
              height: 60,
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
                  inviteDetail.name,
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
                  inviteDetail.designation,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: trout, fontWeight: FontWeight.w500, fontSize: 15),
                )
              ],
            ),
          ),
          ContraButton(
            height: 36,
            color: inviteDetail.isInvited ? wood_smoke : lightening_yellow,
            isSuffix: false,
            isPrefix: false,
            size: 90,
            text: inviteDetail.isInvited ? "Invited" : "Invite",
            textSize: 12,
            borderColor: wood_smoke,
            textColor: inviteDetail.isInvited ? white : wood_smoke,
            callback: () {},
            shadowColor: wood_smoke,
          )
        ],
      ),
    );
  }
}
