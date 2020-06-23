import 'package:contraflutterkit/chart/bar_chart.dart';
import 'package:contraflutterkit/chart/expense.dart';
import 'package:contraflutterkit/chart/expenses_list_item.dart';
import 'package:contraflutterkit/custom_widgets/button_solid_with_icon.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/button_round_with_shadow.dart';
import '../custom_widgets/custom_app_bar.dart';
import '../login/contra_text.dart';
import 'line_chart.dart';

class ChartsPage extends StatefulWidget {
  bool isBarChart;

  ChartsPage({this.isBarChart});

  @override
  _ChartsPageState createState() => _ChartsPageState();
}

class _ChartsPageState extends State<ChartsPage> {
  List<Expense> expenses = List<Expense>();

  @override
  void initState() {
    super.initState();
    expenses.add(Expense(
        title: "Food", time: "2:30AM", description: "Pizza, Burger, Coke"));
    expenses.add(Expense(
        title: "Travel",
        time: "3:40AM",
        description: "Ooty, Kodaikanal, Theni"));
    expenses.add(Expense(
        title: "Food", time: "9:30PM", description: "Pizza, Burger, Coke"));
    expenses.add(Expense(
        title: "Food", time: "10:30PM", description: "Pizza, Burger, Coke"));
    expenses.add(Expense(
        title: "Food", time: "2:30AM", description: "Pizza, Burger, Coke"));
    expenses.add(Expense(
        title: "Food", time: "2:30AM", description: "Pizza, Burger, Coke"));
    expenses.add(Expense(
        title: "Food", time: "2:30AM", description: "Pizza, Burger, Coke"));
    expenses.add(Expense(
        title: "Food", time: "2:30AM", description: "Pizza, Burger, Coke"));
    expenses.add(Expense(
        title: "Travel",
        time: "3:40AM",
        description: "Ooty, Kodaikanal, Theni"));
    expenses.add(Expense(
        title: "Food", time: "9:30PM", description: "Pizza, Burger, Coke"));
    expenses.add(Expense(
        title: "Food", time: "10:30PM", description: "Pizza, Burger, Coke"));
    expenses.add(Expense(
        title: "Food", time: "2:30AM", description: "Pizza, Burger, Coke"));
    expenses.add(Expense(
        title: "Food", time: "2:30AM", description: "Pizza, Burger, Coke"));
    expenses.add(Expense(
        title: "Food", time: "2:30AM", description: "Pizza, Burger, Coke"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: CustomAppBar(
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ButtonRoundWithShadow(
                      size: 48,
                      borderColor: wood_smoke,
                      color: white,
                      callback: () {
                        Navigator.pop(context);
                      },
                      shadowColor: wood_smoke,
                      iconPath: "assets/icons/arrow_back.svg"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ContraText(
                size: 27,
                alignment: Alignment.bottomCenter,
                text: "Status",
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: 20,
              ),
            )
          ],
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                widget.isBarChart ? BarChartSample3() : LineChartSample2(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24.0, vertical: 0),
                  child: ContraText(
                    text: "Expenses",
                    color: santas_gray,
                    alignment: Alignment.centerLeft,
                    weight: FontWeight.bold,
                    size: 15,
                  ),
                ),
                ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return ExpenseListItem(
                      expense: expenses[index],
                    );
                  },
                  itemCount: expenses.length,
                  shrinkWrap: true,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: ButtonPlainWithIcon(
              text: "Email Report",
              size: 48,
              color: black,
              iconPath: "assets/icons/arrow_next.svg",
              textColor: white,
              callback: () {},
              isPrefix: false,
              isSuffix: true,
            ),
          )
        ],
      ),
    );
  }
}
