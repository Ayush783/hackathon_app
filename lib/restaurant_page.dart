import 'package:flutter/material.dart';

class ResPage extends StatefulWidget {
  @override
  _ResPageState createState() => _ResPageState();
}

class _ResPageState extends State<ResPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 200,
          width: double.infinity,
          decoration: (BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              color: Colors.orange)),
        ),
      ),
    );
  }
}
