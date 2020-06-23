import 'package:flutter/material.dart';

class ChartMainPage extends StatefulWidget {
  @override
  _ChartMainPageState createState() => _ChartMainPageState();
}

class _ChartMainPageState extends State<ChartMainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data and Statistics"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Bar Charts"),
              onTap: () {
                Navigator.pushNamed(context, "/bar_chart_page");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Line Charts"),
              onTap: () {
                Navigator.pushNamed(context, "/line_chart_page");
              },
            ),
          ],
        ),
      ),
    );
  }
}
