import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  final List<String> list;

  const CustomListItem({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 24),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        reverse: false,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.check,
                  color: Colors.white,
                ),
                Text(
                  list[index],
                  style: TextStyle(color: Colors.white, fontSize: 21),
                )
              ],
            ),
          );
        });
  }
}
