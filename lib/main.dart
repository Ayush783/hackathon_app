import 'package:flutter/material.dart';
import 'package:hackathon_app/homepage.dart';
import 'package:hackathon_app/login.dart';
import 'package:hackathon_app/resAdmin_Dashbord.dart';
import 'package:hackathon_app/restaurant_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Loginpage(),
        '/2': (context) => Signin(),
        '3': (context) => Signup(),
        '4': (context) => Homepage(),
        '5': (context) => ResPage1(),
        '6': (context) => ResPage2(),
        '7': (context) => ResPage3(),
        '8': (context) => ResPage4(),
        '9': (context) => ResPage5(),
        '10': (context) => ResPage6(),
        '11': (context) => ResPage7(),
        '12': (context) => ResPage8(),
        '13': (context) => ResPage9(),
        '14': (context) => Adminlogin(),
        '15': (context) => AdminPage(),

      },
      theme: ThemeData.light(),
      initialRoute: '/',
    );
  }
}
