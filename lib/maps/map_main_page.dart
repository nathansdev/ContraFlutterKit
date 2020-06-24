import 'package:flutter/material.dart';

class LocationMapMainPage extends StatefulWidget {
  @override
  _LocationMapMainPageState createState() => _LocationMapMainPageState();
}

class _LocationMapMainPageState extends State<LocationMapMainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map and Location"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Locations Listing"),
              onTap: () {
                Navigator.pushNamed(context, "/location_list_page");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Location Detail Page"),
              onTap: () {
                Navigator.pushNamed(context, "/location_detail_page");
              },
            ),
          ],
        ),
      ),
    );
  }
}
