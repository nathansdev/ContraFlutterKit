import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentMainPage extends StatefulWidget {
  @override
  _PaymentMainPageState createState() => _PaymentMainPageState();
}

class _PaymentMainPageState extends State<PaymentMainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Payment Page Type One"),
              onTap: () {
                Navigator.pushNamed(context, "/payment_page_type_one");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Payment Page Type Two"),
              onTap: () {
                Navigator.pushNamed(context, "/payment_page_type_two");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Payment Page Type Three"),
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
