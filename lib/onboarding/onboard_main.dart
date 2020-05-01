import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardPage extends StatefulWidget {
  @override
  _OnboardPageState createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Onboarding"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.all(20),
            trailing: Icon(Icons.navigate_next),
            title: Text("Type One"),
            onTap: () {
              Navigator.pushNamed(context, "/onboard_type_one");
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.all(20),
            trailing: Icon(Icons.navigate_next),
            title: Text("Type Two"),
            onTap: () {
              Navigator.pushNamed(context, "/onboard_type_two");
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.all(20),
            trailing: Icon(Icons.navigate_next),
            title: Text("Type Three"),
            onTap: () {
              Navigator.pushNamed(context, "/onboard_type_three");
            },
          ),
          Container(
            child: ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Type Four"),
              onTap: () {
                Navigator.pushNamed(context, "/onboard_type_four");
              },
            ),
          ),
        ],
      ),
    );
  }
}
