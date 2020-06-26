import 'package:flutter/material.dart';

class ContentMainPage extends StatefulWidget {
  @override
  _ContentMainPageState createState() => _ContentMainPageState();
}

class _ContentMainPageState extends State<ContentMainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Content, Text Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Blog Home"),
              onTap: () {
                Navigator.pushNamed(context, "/content_blog_home");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Detail Screen One"),
              onTap: () {
                Navigator.pushNamed(context, "/detail_screen_one");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Image and Text"),
              onTap: () {
                Navigator.pushNamed(context, "/image_and_text");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Detail Screen Two"),
              onTap: () {
                Navigator.pushNamed(context, "/detail_screen_two");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Detail Screen Three"),
              onTap: () {
                Navigator.pushNamed(context, "/detail_screen_three");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Detail Screen Four"),
              onTap: () {
                Navigator.pushNamed(context, "/detail_screen_four");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Details Images in Grid"),
              onTap: () {
                Navigator.pushNamed(context, "/detail_screen_grid");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Home Listing"),
              onTap: () {
                Navigator.pushNamed(context, "/home_list_page");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("User Listing"),
              onTap: () {
                Navigator.pushNamed(context, "/user_listing_page");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("User Invite Page"),
              onTap: () {
                Navigator.pushNamed(context, "/user_invite_page");
              },
            ),
          ],
        ),
      ),
    );
  }
}
