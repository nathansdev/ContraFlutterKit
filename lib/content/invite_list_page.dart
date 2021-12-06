import 'package:contraflutterkit/content/user.dart';
import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/custom_widgets/custom_search_text.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'invite_list_item.dart';

class InviteListPage extends StatefulWidget {
  @override
  _InviteListPageState createState() => _InviteListPageState();
}

class _InviteListPageState extends State<InviteListPage> {
  TextEditingController _textEditingController = TextEditingController();
  List<InviteDetail> invites = <InviteDetail>[];

  @override
  void initState() {
    super.initState();
    invites.add(InviteDetail(
        name: "Bill Rizer",
        designation: "Planet Designer",
        profile: "assets/icons/ic_avatar.svg",
        isInvited: false));
    invites.add(InviteDetail(
        name: "Bill Rizer",
        designation: "Planet Designer",
        profile: "assets/icons/ic_avatar_2.svg",
        isInvited: false));
    invites.add(InviteDetail(
        name: "Konami",
        designation: "Xenon Creator",
        profile: "assets/icons/ic_avatar_3.svg",
        isInvited: true));
    invites.add(InviteDetail(
        name: "Hard Cops",
        designation: "Bill Rizer",
        profile: "assets/icons/ic_avatar.svg",
        isInvited: false));
    invites.add(InviteDetail(
        name: "Rogue Corp",
        designation: "Lancy Neo",
        profile: "assets/icons/ic_avatar_2.svg",
        isInvited: false));
    invites.add(InviteDetail(
        name: " Genbei Yagy ",
        designation: "Planet Designer",
        profile: "assets/icons/ic_avatar_3.svg",
        isInvited: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightening_yellow,
      appBar: CustomAppBar(
        height: 120,
        child: Row(
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
              flex: 2,
              child: ContraText(
                size: 27,
                alignment: Alignment.bottomCenter,
                text: "Friends",
                color: wood_smoke,
                weight: FontWeight.w800,
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24, top: 24),
              child: CustomSearchText(
                iconPath: "assets/icons/ic_search.svg",
                text: "Search with love ...",
                enable: true,
                callback: () {},
                controller: _textEditingController,
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.all(24),
                physics: NeverScrollableScrollPhysics(),
                itemCount: invites.length,
                itemBuilder: (BuildContext context, int index) {
                  return InviteListItem(
                    inviteDetail: invites[index],
                  );
                })
          ],
        ),
      ),
    );
  }
}
