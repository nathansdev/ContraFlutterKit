import 'dart:io';

import 'package:contraflutterkit/custom_widgets/button_round_with_shadow.dart';
import 'package:contraflutterkit/custom_widgets/custom_app_bar.dart';
import 'package:contraflutterkit/custom_widgets/custom_header.dart';
import 'package:contraflutterkit/maps/location_list_item.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
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
        child: Row(
          children: [
            kIsWeb || Platform.isIOS
                ? SizedBox(
                    width: 24,
                  )
                : SizedBox(
                    width: 24,
                  ),
            kIsWeb || Platform.isIOS
                ? ButtonRoundWithShadow(
                    size: 48,
                    borderColor: wood_smoke,
                    color: white,
                    callback: () {
                      Navigator.pop(context);
                    },
                    shadowColor: wood_smoke,
                    iconPath: "assets/icons/close.svg")
                : SizedBox(),
            CustomHeader(
              fg_color: wood_smoke,
              isTwoLines: kIsWeb ? false : true,
              bg_color: white,
              color: wood_smoke,
              lineOneText: "Your",
              lineTwotext: "Directions",
            ),
          ],
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
