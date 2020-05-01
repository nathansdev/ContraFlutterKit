import 'package:contraflutterkit/onboarding/onboard_main.dart';
import 'package:contraflutterkit/onboarding/type3/pager.dart';
import 'package:contraflutterkit/onboarding/welcome_screen.dart';
import 'package:contraflutterkit/utils/colors.dart';
import 'package:contraflutterkit/utils/empty_screen.dart';
import 'package:flutter/material.dart';

import 'onboarding/type1/pager.dart';
import 'onboarding/type2/pager.dart';
import 'onboarding/type4/onboard_page_four.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contra Flutter Kit',
      theme: ThemeData(
          fontFamily: 'Montserrat',
          primarySwatch: Colors.blue,
          primaryColor: persian_blue),
      home: MyHomePage(title: 'Contra Flutter Kit Demo'),
      routes: {
        '/onboard_all': (context) => OnboardPage(),
        '/onboard_type_one': (context) => OnboardingPagerTypeOne(),
        '/onboard_type_two': (context) => OnboardingPagerTypeTwo(),
        '/onboard_type_three': (context) => OnboardingPagerTypeThree(),
        '/onboard_type_four': (context) => OnboardPageTypeFour(),
        '/empty_state': (context) => EmptyState(),
        '/welcome_screen': (context) => WelcomeScreenPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Onboarding and Splash"),
              onTap: () {
                Navigator.pushNamed(context, "/onboard_all");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Forms, Login, Signup"),
              onTap: () {
                Navigator.pushNamed(context, "/empty_state");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Chatting Screens"),
              onTap: () {
                Navigator.pushNamed(context, "/empty_state");
              },
            ),
            Container(
              child: ListTile(
                contentPadding: EdgeInsets.all(20),
                trailing: Icon(Icons.navigate_next),
                title: Text("Onboarding"),
                onTap: () {
                  Navigator.pushNamed(context, "/empty_state");
                },
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Profile"),
              onTap: () {
                Navigator.pushNamed(context, "/empty_state");
              },
            )
          ],
        ),
      ),
    );
  }
}
