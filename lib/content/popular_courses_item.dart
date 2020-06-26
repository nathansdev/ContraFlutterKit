import 'package:contraflutterkit/login/contra_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class PopularCourseItem extends StatelessWidget {
  Author author;

  PopularCourseItem({this.author});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: ShapeDecoration(
          color: white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)))),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              author.path,
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
                  author.name,
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
                  author.designation,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: trout, fontWeight: FontWeight.w500, fontSize: 15),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                ContraText(
                  text: "67k",
                  size: 17,
                  weight: FontWeight.w800,
                  textAlign: TextAlign.center,
                  color: santas_gray_10,
                  alignment: Alignment.center,
                ),
                ContraText(
                  text: "followers",
                  size: 17,
                  weight: FontWeight.w800,
                  textAlign: TextAlign.center,
                  color: santas_gray_10,
                  alignment: Alignment.center,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PopularCourseAuthorItem extends StatelessWidget {
  AuthorText author;

  PopularCourseAuthorItem({this.author});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 144,
            height: 160,
            decoration: ShapeDecoration(
                color: author.bgColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    side: BorderSide(color: wood_smoke, width: 2))),
            child: Center(
              child: SvgPicture.asset(
                "assets/icons/placeholder_icon.svg",
                height: 40,
                width: 40,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(vertical: 2),
            child: Text(
              author.subject,
              maxLines: 2,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: wood_smoke, fontSize: 15, fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(vertical: 1),
            child: Text(
              author.hour,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: trout, fontSize: 13, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}

class Author {
  String designation;
  String name;
  String path;

  Author({this.name, this.designation, this.path});
}

class AuthorText {
  String subject;
  String hour;
  Color bgColor;

  AuthorText({this.subject, this.hour, this.bgColor});
}
