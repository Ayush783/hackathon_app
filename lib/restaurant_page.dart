import 'package:flutter/material.dart';

class ResPage1 extends StatefulWidget {
  @override
  _ResPage1State createState() => _ResPage1State();
}
class _ResPage1State extends State<ResPage1> {
  double sum=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
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
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Naaz Chicken",
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text.rich(
                  TextSpan(
                    text: 'Address :',
                    style: TextStyle(
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              '   OBC bank bus stand, Muradnagar Locality, Muradnagar ',
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Container(
                margin: EdgeInsets.only(left: 25),
                width: 300,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Restaurant  Menu",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Dishes('Chaap Afghani',190.00),
              Dishes('Tandoori Fried Chicken',120.0),
              Dishes('Butter Tandoori Chicken',120.0),
              Dishes('Chicken Kebab',100.0),
              Dishes('Chicken Changezi',160.0),
              Dishes('Shahi Paneer',150.0),
              Dishes('Butter Chicken',120.0),
              Dishes('Chicken Kaali Mirch',120.0),
              Dishes('Chicken Tandoori Nice',260.0),
              Dishes('Chicken Afghani',150.0),
              Dishes('Chicken tikka',119.0),
              Dishes('paneer Tikka',250.0),
              Dishes('Fried chicken',190.0),
              Padding(padding: EdgeInsets.only(top:15),),
              Card(child: Row(children: <Widget>[
                Text("Cart"),
                Padding(padding: EdgeInsets.only(right:100),),
                Text("Total Sum :")
              ],),)
            ],
          ),
        ),
      ),
    );
  }
}

class ResPage2 extends StatefulWidget {
  @override
  _ResPage2State createState() => _ResPage2State();
}

class _ResPage2State extends State<ResPage2> {
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
                      'https://cdn.pixabay.com/photo/2015/04/08/13/13/food-712665__340.jpg')),
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

class ResPage3 extends StatefulWidget {
  @override
  _ResPage3State createState() => _ResPage3State();
}

class _ResPage3State extends State<ResPage3> {
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
                      'https://cdn.pixabay.com/photo/2017/01/11/11/33/cake-1971552__340.jpg')),
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

class ResPage4 extends StatefulWidget {
  @override
  _ResPage4State createState() => _ResPage4State();
}

class _ResPage4State extends State<ResPage4> {
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
                      'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246__340.jpg')),
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

class ResPage5 extends StatefulWidget {
  @override
  _ResPage5State createState() => _ResPage5State();
}

class _ResPage5State extends State<ResPage5> {
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
                      'https://image.shutterstock.com/image-photo/chicken-skewers-slices-apples-chili-260nw-426536971.jpg')),
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

class ResPage6 extends StatefulWidget {
  @override
  _ResPage6State createState() => _ResPage6State();
}

class _ResPage6State extends State<ResPage6> {
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
                      'https://cdn.pixabay.com/photo/2017/06/16/07/00/breakfast-2408035__340.jpg')),
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

class ResPage7 extends StatefulWidget {
  @override
  _ResPage7State createState() => _ResPage7State();
}

class _ResPage7State extends State<ResPage7> {
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
                      'https://cdn.pixabay.com/photo/2018/05/17/17/07/fried-3409076__340.jpg')),
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

class ResPage8 extends StatefulWidget {
  @override
  _ResPage8State createState() => _ResPage8State();
}

class _ResPage8State extends State<ResPage8> {
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
                      'https://cdn.pixabay.com/photo/2020/02/11/15/41/shrimp-4839919__340.jpg')),
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

class ResPage9 extends StatefulWidget {
  @override
  _ResPage9State createState() => _ResPage9State();
}

class _ResPage9State extends State<ResPage9> {
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
                      'https://cdn.pixabay.com/photo/2014/11/03/23/33/food-516044__340.jpg')),
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



class Dishes extends StatefulWidget {

  final String dishname;
  final double price;
  Dishes(this.dishname, this.price);
  @override
  _DishesState createState() => _DishesState();
}

class _DishesState extends State<Dishes> {
  int i=0;
  double sum=0;
  @override
  Widget build(BuildContext context) {
   return Card(
        child: Row(children: <Widget>[
          Padding(padding: EdgeInsets.only(left:30),),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Container(
              width: 110,
              child: Text(widget.dishname,style: TextStyle(fontSize: 12),)),
            Text("Rs.${widget.price}",style: TextStyle(fontSize: 8),)
          ],),
          Padding(padding: EdgeInsets.only(right:100),),
          Container(
            
            child: Row(children: <Widget>[
        RawMaterialButton(
          constraints: BoxConstraints(minHeight: 10,minWidth: 10),
          onPressed: (){
          setState(() {
            if(i>0){
              i--;
            }
          });
      },
      child: Icon(Icons.remove),
      ),
      Text("$i"),
      RawMaterialButton(
        constraints: BoxConstraints(minHeight: 10),
        onPressed: (){
          setState(() {
            i++;
            sum=i*widget.price;
            return sum;
          });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Icon(Icons.add),
      ),
      ],),)
        ],)
        );
  }
}