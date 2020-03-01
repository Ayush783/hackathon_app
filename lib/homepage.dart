import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hackathon_app/location.dart';
import 'package:http/http.dart';

const apikey1 = "ba4fa1af6358a8acb8783da428c5e77d";

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
    resData();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    lat = location.latitude;
    lon = location.longitude;
  }

  var m;
  String name1;
  String name2;
  String name3;
  String name4;
  String name5;
  String name6;
  String name7;
  String name8;
  String name9;
  String rat1;
  String rat2;
  String rat3;
  String rat4;
//int rat5;
  String rat6;
  String rat7;
  String rat8;
  String rat9;
  Future<void> resData() async {
    Response response = await get(
        'https://developers.zomato.com/api/v2.1/location_details?entity_id=11882&entity_type=city',
        headers: {
          'content-type': 'application/json',
          'user-key': apikey1,
          "access-control-allow-credentials": "true"
        });
    m = response.body;
    String _name1 =
        await jsonDecode(m)['best_rated_restaurant'][0]['restaurant']['name'];
    name1 = _name1;
    String _name2 =
        await jsonDecode(m)['best_rated_restaurant'][1]['restaurant']['name'];
    String _name3 =
        await jsonDecode(m)['best_rated_restaurant'][2]['restaurant']['name'];
    String _name4 =
        await jsonDecode(m)['best_rated_restaurant'][3]['restaurant']['name'];
    String _name5 =
        await jsonDecode(m)['best_rated_restaurant'][4]['restaurant']['name'];
    String _name6 =
        await jsonDecode(m)['best_rated_restaurant'][5]['restaurant']['name'];
    String _name7 =
        await jsonDecode(m)['best_rated_restaurant'][6]['restaurant']['name'];
    String _name8 =
        await jsonDecode(m)['best_rated_restaurant'][7]['restaurant']['name'];
    String _name9 =
        await jsonDecode(m)['best_rated_restaurant'][8]['restaurant']['name'];
    name2 = _name2;
    name3 = _name3;
    name4 = _name4;
    name5 = _name5;
    name6 = _name6;
    name7 = _name7;
    name8 = _name8;
    name9 = _name9;
    String _rat1 = await jsonDecode(m)['best_rated_restaurant'][0]['restaurant']
        ['user_rating']['aggregate_rating'];
    String _rat2 = await jsonDecode(m)['best_rated_restaurant'][1]['restaurant']
        ['user_rating']['aggregate_rating'];
    String _rat3 = await jsonDecode(m)['best_rated_restaurant'][2]['restaurant']
        ['user_rating']['aggregate_rating'];
    String _rat4 = await jsonDecode(m)['best_rated_restaurant'][3]['restaurant']
        ['user_rating']['aggregate_rating'];
    //int _rat5=await jsonDecode(m)['best_rated_restaurant'][4]['restaurant']['user_rating']['aggregate_rating'];
    String _rat6 = await jsonDecode(m)['best_rated_restaurant'][5]['restaurant']
        ['user_rating']['aggregate_rating'];
    String _rat7 = await jsonDecode(m)['best_rated_restaurant'][6]['restaurant']
        ['user_rating']['aggregate_rating'];
    String _rat8 = await jsonDecode(m)['best_rated_restaurant'][7]['restaurant']
        ['user_rating']['aggregate_rating'];
    String _rat9 = await jsonDecode(m)['best_rated_restaurant'][8]['restaurant']
        ['user_rating']['aggregate_rating'];
    rat1 = _rat1;
    rat2 = _rat2;
    rat3 = _rat3;
    rat4 = _rat4;
    rat6 = _rat6;
    rat7 = _rat7;
    rat8 = _rat8;
    rat9 = _rat9;
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
                " nearby restaurants",
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
              RawMaterialButton(
                splashColor: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, '5');
                },
                child: Rescard(name1.toString(), 'Muradnagar', rat1.toString(),
                    'https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
              ),
              RawMaterialButton(
                splashColor: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, '6');
                },
                child: Rescard(name2.toString(), 'Muradnagar', rat2.toString(),
                    'https://cdn.pixabay.com/photo/2015/04/08/13/13/food-712665__340.jpg'),
              ),
              RawMaterialButton(
                splashColor: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, '7');
                },
                child: Rescard(name3.toString(), 'Muradnagar', rat3.toString(),
                    'https://cdn.pixabay.com/photo/2017/01/11/11/33/cake-1971552__340.jpg'),
              ),
              RawMaterialButton(
                splashColor: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, '8');
                },
                child: Rescard(name4.toString(), 'Muradnagar', rat4.toString(),
                    'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246__340.jpg'),
              ),
              RawMaterialButton(
                splashColor: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, '9');
                },
                child: Rescard(name5.toString(), 'Muradnagar', '0',
                    'https://image.shutterstock.com/image-photo/chicken-skewers-slices-apples-chili-260nw-426536971.jpg'),
              ),
              RawMaterialButton(
                splashColor: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, '10');
                },
                child: Rescard(name6.toString(), 'Muradnagar', rat6.toString(),
                    'https://cdn.pixabay.com/photo/2017/06/16/07/00/breakfast-2408035__340.jpg'),
              ),
              RawMaterialButton(
                splashColor: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, '11');
                },
                child: Rescard(
                    'Up 14 food point',
                    'Muradnagar',
                    rat7.toString(),
                    'https://cdn.pixabay.com/photo/2018/05/17/17/07/fried-3409076__340.jpg'),
              ),
              RawMaterialButton(
                splashColor: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, '12');
                },
                child: Rescard(name8.toString(), 'Muradnagar', rat8.toString(),
                    'https://cdn.pixabay.com/photo/2020/02/11/15/41/shrimp-4839919__340.jpg'),
              ),
              RawMaterialButton(
                splashColor: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, '13');
                },
                child: Rescard(name9.toString(), 'Muradnagar', rat9.toString(),
                    'https://cdn.pixabay.com/photo/2014/11/03/23/33/food-516044__340.jpg'),
              ),
            ],
          )
        ],
      )),
    );
  }
}

//restaurants card class
class Rescard extends StatefulWidget {
  final String name;
  final String rating;
  final String address;
  final String url;

  Rescard(this.name, this.address, this.rating, this.url);

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
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            height: 110,
            width: 120,
            child: Image(
              image: NetworkImage(widget.url),
              fit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.restaurant,
                    size: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                  ),
                  Text(
                    widget.name,
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.home,
                    size: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                  ),
                  Text(widget.address),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    size: 10,
                  ),
                  Icon(
                    Icons.star,
                    size: 10,
                  ),
                  Icon(
                    Icons.star,
                    size: 10,
                  ),
                  Icon(
                    Icons.star,
                    size: 10,
                  ),
                  Icon(
                    Icons.star_border,
                    size: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                  ),
                  Text(
                    widget.rating,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
