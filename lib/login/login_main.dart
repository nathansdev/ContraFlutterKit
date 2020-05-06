import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginMainPage extends StatefulWidget {
  @override
  _LoginMainPageState createState() => _LoginMainPageState();
}

class _LoginMainPageState extends State<LoginMainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.all(20),
            trailing: Icon(Icons.navigate_next),
            title: Text("Type One"),
            onTap: () {
              Navigator.pushNamed(context, "/login_type_one");
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.all(20),
            trailing: Icon(Icons.navigate_next),
            title: Text("Type Two"),
            onTap: () {
              Navigator.pushNamed(context, "/login_type_two");
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.all(20),
            trailing: Icon(Icons.navigate_next),
            title: Text("Type Three"),
            onTap: () {
              Navigator.pushNamed(context, "/login_type_three");
            },
          ),
          Container(
            child: ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Type Four"),
              onTap: () {
                Navigator.pushNamed(context, "/login_type_four");
              },
            ),
          ),
          Container(
            child: ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Type Five"),
              onTap: () {
                Navigator.pushNamed(context, "/login_type_five");
              },
            ),
          ),
          Container(
            child: ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Contact Us Form"),
              onTap: () {
                Navigator.pushNamed(context, "/contact_us_form");
              },
            ),
          ),
        ],
      ),
    );
  }
}
