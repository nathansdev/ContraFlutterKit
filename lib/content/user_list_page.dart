import 'package:contraflutterkit/content/user.dart';
import 'package:contraflutterkit/content/user_list_item.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/custom_widgets/custom_header.dart';
import 'package:contraflutterkit/custom_widgets/custom_search_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserListPage extends StatefulWidget {
  @override
  _UserListPageState createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  TextEditingController _textEditingController = TextEditingController();
  List<User> users = List<User>();

  @override
  void initState() {
    super.initState();
    users.add(User(
        name: "Angela Mehra",
        designation: "Designer",
        profile: "assets/images/peep_man_three.svg",
        textColor: white,
        bgColor: carribean_green));
    users.add(User(
        name: "Konami Ravi",
        designation: "Muscian",
        textColor: white,
        profile: "assets/images/peep_lady_one.svg",
        bgColor: flamingo));
    users.add(User(
        name: "Hard Cops",
        textColor: white,
        designation: "Bill Rizer",
        profile: "assets/images/peep_man_right.svg",
        bgColor: Colors.yellow));
    users.add(User(
      textColor: black,
      name: "Kalia Youknow",
      designation: "Muscian",
      profile: "assets/images/peep_lady_right.svg",
    ));
    users.add(User(
      textColor: white,
      name: " Genbei Yagy ",
      designation: "Planet Designer",
      bgColor: caribbean_color,
      profile: "assets/images/peep_lady_right.svg",
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: CustomAppBar(
        height: 200,
        child: CustomHeader(
          fg_color: wood_smoke,
          bg_color: white,
          color: wood_smoke,
          lineOneText: "Popular",
          lineTwotext: "Artists",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24,
              ),
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
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  return UserListItem(
                    user: users[index],
                  );
                })
          ],
        ),
      ),
    );
  }
}
