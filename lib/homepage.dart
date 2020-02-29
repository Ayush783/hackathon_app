import 'package:flutter/material.dart';
import 'package:hackathon_app/location.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:hackathon_app/resData.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double lat;
  double lon;

  @override
  void initState() {
    super.initState();
    getLocation();
    getRestaurantData();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    lat = location.latitude;
    lon = location.longitude;
  }

  void getRestaurantData() async {
    ResData resData = ResData();
    await resData.resData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              Text(
                "Current Location",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Text(
                "nearby restaurants",
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Rescard(),
            ],
          )
        ],
      )),
    );
  }
}

class Rescard extends StatefulWidget {
  @override
  _RescardState createState() => _RescardState();
}

class _RescardState extends State<Rescard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 40),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            height: 100,
            width: 100,
            child: Image(
              image: NetworkImage(
                  'https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
              fit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(MaterialCommunityIcons.home),
                  Text("restaurant name"),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Address"),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("rating"),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
