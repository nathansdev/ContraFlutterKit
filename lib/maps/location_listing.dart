import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/custom_widgets/custom_header.dart';
import 'package:contraflutterkit/maps/location_list_item.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'location.dart';

class LocationListingPage extends StatefulWidget {
  @override
  _LocationListingPageState createState() => _LocationListingPageState();
}

class _LocationListingPageState extends State<LocationListingPage> {
  List<Location> list = <Location>[];

  @override
  void initState() {
    super.initState();
    list.add(Location(
        address: "Wolf Crater, 897, Marsh", name: "Space 8", distance: "1.5"));
    list.add(Location(
        address: "Wolf Crater, 897, Marsh", name: "Space 8", distance: "2.0"));
    list.add(Location(
        address: "Wolf Crater, 897, Marsh", name: "Space 8", distance: "2.5"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 200,
        child: CustomHeader(
          fg_color: wood_smoke,
          bg_color: white,
          color: wood_smoke,
          lineOneText: "Your",
          lineTwotext: "Directions",
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 24),
        itemBuilder: (BuildContext cotext, int index) {
          return LocationListItem(
            location: list[index],
          );
        },
        itemCount: list.length,
      ),
    );
  }
}
