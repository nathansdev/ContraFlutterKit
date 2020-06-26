import 'package:contraflutterkit/content/popular_courses_item.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/custom_widgets/custom_header.dart';
import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularCoursesPage extends StatefulWidget {
  @override
  _PopularCoursesPageState createState() => _PopularCoursesPageState();
}

class _PopularCoursesPageState extends State<PopularCoursesPage> {
  TextEditingController _textEditingController = TextEditingController();
  List<Author> authors = List<Author>();
  List<AuthorText> subjects = List<AuthorText>();

  @override
  void initState() {
    super.initState();
    authors.add(Author(
        name: "Bill Rizer",
        designation: "Planet Designer",
        path: "assets/icons/ic_avatar_2.svg"));
    authors.add(Author(
        name: "Bill Rizer",
        designation: "Planet Designer",
        path: "assets/icons/ic_avatar.svg"));
    authors.add(Author(
        name: "Konami",
        designation: "Xenon Creator",
        path: "assets/icons/ic_avatar_2.svg"));
    authors.add(Author(
        name: "Hard Cops",
        designation: "Bill Rizer",
        path: "assets/icons/ic_avatar_3.svg"));
    authors.add(Author(
        name: "Rogue Corp",
        designation: "Lancy Neo",
        path: "assets/icons/ic_avatar.svg"));
    authors.add(Author(
        name: " Genbei Yagy ",
        designation: "Planet Designer",
        path: "assets/icons/ic_avatar_2.svg"));
    subjects.add(AuthorText(
        hour: "2hrs", subject: "British English", bgColor: lightening_yellow));
    subjects.add(
        AuthorText(hour: "2hrs", subject: "Electronics", bgColor: flamingo));
    subjects.add(
        AuthorText(hour: "2hrs", subject: "Cooking", bgColor: persian_blue));
    subjects.add(AuthorText(
        hour: "2hrs", subject: "British English", bgColor: carribean_green));
    subjects.add(AuthorText(
        hour: "2hrs", subject: "British English", bgColor: pink_salomn));
    subjects.add(AuthorText(
        hour: "2hrs", subject: "British English", bgColor: lightening_yellow));
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
          lineTwotext: "Courses",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 230,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 24),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return PopularCourseAuthorItem(
                    author: subjects[index],
                  );
                },
                itemCount: subjects.length,
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, right: 24, top: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ContraText(
                        alignment: Alignment.centerLeft,
                        textAlign: TextAlign.left,
                        color: santas_gray_10,
                        weight: FontWeight.bold,
                        size: 15,
                        text: "Popular Teacher",
                      ),
                      ContraText(
                        alignment: Alignment.centerLeft,
                        textAlign: TextAlign.left,
                        color: flamingo,
                        weight: FontWeight.bold,
                        size: 15,
                        text: "see all",
                      )
                    ],
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.all(24),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: authors.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PopularCourseItem(
                        author: authors[index],
                      );
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
