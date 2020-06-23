import 'package:contraflutterkit/chart/expense.dart';
import 'package:contraflutterkit/custom_widgets/image_round_text.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpenseListItem extends StatelessWidget {
  Expense expense;

  ExpenseListItem({this.expense});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Row(
        children: <Widget>[
          RoundImageWithText(
            size: 48,
            text: expense.title.substring(0, 1),
            color: dandelion,
            borderColor: wood_smoke,
            shadowColor: wood_smoke,
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  expense.time,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 21,
                      color: wood_smoke,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  expense.description,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: trout, fontWeight: FontWeight.w500, fontSize: 15),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              expense.time,
              style: TextStyle(
                  fontSize: 11,
                  color: santas_gray_10,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
