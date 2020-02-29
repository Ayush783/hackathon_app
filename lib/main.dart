import 'package:flutter/material.dart';
import 'package:hackathon_app/homepage.dart';
import 'package:hackathon_app/login.dart';

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
      },
      theme: ThemeData.light(),
      initialRoute: '/',
    );
  }
}
