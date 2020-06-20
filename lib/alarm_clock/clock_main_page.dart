import 'package:flutter/material.dart';

class ClockMainPage extends StatefulWidget {
  @override
  _ClockMainPageState createState() => _ClockMainPageState();
}

class _ClockMainPageState extends State<ClockMainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clock"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Clock Page Type One"),
              onTap: () {
                Navigator.pushNamed(context, "/payment_page_type_one");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Clock Page Type Two"),
              onTap: () {
                Navigator.pushNamed(context, "/payment_page_type_two");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Clock Page Type Three"),
              onTap: () {
                Navigator.pushNamed(context, "/payment_page_type_three");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Clock Page Type Four"),
              onTap: () {
                Navigator.pushNamed(context, "/payment_page_type_three");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Clock Page Type Five"),
              onTap: () {
                Navigator.pushNamed(context, "/payment_page_type_three");
              },
            ),
          ],
        ),
      ),
    );
  }
}
