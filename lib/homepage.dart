import 'package:flutter/material.dart';
import 'package:hackathon_app/location.dart';
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
              Rescard(ResData().data(0), 'address', 'rating',
                  'https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
              Rescard(ResData().data(1).toString(),'ad2','rat2','https://cdn.pixabay.com/photo/2015/04/08/13/13/food-712665__340.jpg'),
              Rescard(ResData().data(2).toString(),'ad2','rat2','https://cdn.pixabay.com/photo/2017/01/11/11/33/cake-1971552__340.jpg'),
              Rescard(ResData().data(3).toString(),'ad2','rat2','https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246__340.jpg'),
              Rescard(ResData().data(4).toString(),'ad2','rat2','https://image.shutterstock.com/image-photo/chicken-skewers-slices-apples-chili-260nw-426536971.jpg'),
              Rescard(ResData().data(5).toString(),'ad2','rat2','https://cdn.pixabay.com/photo/2017/06/16/07/00/breakfast-2408035__340.jpg'),
              Rescard(ResData().data(6).toString(),'ad2','rat2','https://cdn.pixabay.com/photo/2018/05/17/17/07/fried-3409076__340.jpg'),
              Rescard(ResData().data(7).toString(),'ad2','rat2','https://cdn.pixabay.com/photo/2020/02/11/15/41/shrimp-4839919__340.jpg'),
              Rescard(ResData().data(8).toString(),'ad2','rat2','https://cdn.pixabay.com/photo/2014/11/03/23/33/food-516044__340.jpg'),
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
    return RawMaterialButton(
      splashColor: Colors.transparent,
      onPressed: (){
        Navigator.pushNamed(context, '5');
      },
          child: Card(
        elevation: 20,
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 30),
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
                    Icon(Icons.restaurant,size: 16,),
                    Padding(padding: EdgeInsets.only(right:5),),
                    Text(widget.name,style: TextStyle(fontSize: 10),),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.home,size: 16,),
                    Padding(padding: EdgeInsets.only(right:5),),
                    Text(widget.address),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.star,size: 10,),
                    Icon(Icons.star,size: 10,),
                    Icon(Icons.star,size: 10,),
                    Icon(Icons.star,size: 10,),
                    Icon(Icons.star_border,size: 10,),
                    Padding(padding: EdgeInsets.only(right:5),),
                    Text(widget.rating,),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
