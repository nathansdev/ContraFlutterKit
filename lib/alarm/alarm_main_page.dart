import 'package:flutter/material.dart';

class AlarmMainPage extends StatefulWidget {
  @override
  _AlarmMainPageState createState() => _AlarmMainPageState();
}

class _AlarmMainPageState extends State<AlarmMainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alarm, Clock, Weather"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Alarm List Page"),
              onTap: () {
                Navigator.pushNamed(context, "/alarm_list_page");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Add Alarm Page"),
              onTap: () {
                Navigator.pushNamed(context, "/add_alarm_page");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Clock List Page"),
              onTap: () {
                Navigator.pushNamed(context, "/clock_list_page");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Weather List Page"),
              onTap: () {
                Navigator.pushNamed(context, "/weather_list_page");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Weather Page"),
              onTap: () {
                Navigator.pushNamed(context, "/weather_page");
              },
            ),
          ],
        ),
      ),
    );
  }
}
