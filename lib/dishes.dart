import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Dishes extends StatefulWidget {

  final String dishname;
  final double price;
  Dishes(this.dishname, this.price);
  @override
  _DishesState createState() => _DishesState();
}

class _DishesState extends State<Dishes> {

  final _firestore = Firestore.instance;
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
            _firestore.collection('dishes').add({
              'name':widget.dishname,
              'price':widget.price,
              'amount':i,
            });
            _firestore.collection('total').add({'sum':sum+i*widget.price});
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