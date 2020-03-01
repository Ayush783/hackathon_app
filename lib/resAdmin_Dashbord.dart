import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffd4130f),
          title: Text("Dashboard"),
        ),
        body: Bookings(),
      ),
    );
  }
}

class Bookings extends StatefulWidget {
  @override
  _BookingsState createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return Card(
       child: Container(height: 100,
       child: Row(children: <Widget>[
         Text("Booking has been made by Harshita Saxena")
       ],),
       ),
    );
  }
}
