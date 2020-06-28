import 'package:flutter/material.dart';

class MenuSettingsMainPage extends StatefulWidget {
  @override
  _MenuSettingsMainPageState createState() => _MenuSettingsMainPageState();
}

class _MenuSettingsMainPageState extends State<MenuSettingsMainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu and Settings"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Menu Type One"),
              onTap: () {
                Navigator.pushNamed(context, "/menu_type_one");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Menu Type Two"),
              onTap: () {
                Navigator.pushNamed(context, "/menu_type_two");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Settings Type One"),
              onTap: () {
                Navigator.pushNamed(context, "/settings_type_one");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Settings Type Two"),
              onTap: () {
                Navigator.pushNamed(context, "/settings_type_two");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Settings Type Three"),
              onTap: () {
                Navigator.pushNamed(context, "/settings_type_three");
              },
            ),
          ],
        ),
      ),
    );
  }
}
