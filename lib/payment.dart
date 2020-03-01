import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  @override
  _PaymentsState createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          children: <Widget>[
            Text("Pay Rs.",style: TextStyle(fontSize: 25),),
             Padding(padding: EdgeInsets.only(top:20),),
            SizedBox(
              height: 0.2,
              child: Container(color: Colors.grey[800],),),
            Padding(padding: EdgeInsets.only(top:6),),
            Text("Wallets",style: TextStyle(fontSize: 20),),
            ListTile(
              title: Text(
                "Paytm",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              title: Text(
                "Mobikwik",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.chevron_right),
            ),
            Padding(padding: EdgeInsets.only(top:20),),
            SizedBox(
              height: 0.2,
              child: Container(color: Colors.grey[800],),),
              Padding(padding: EdgeInsets.only(top:6),),
            Text("Online Payments",style: TextStyle(fontSize: 20),),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text(
                "Credit, Debit & Atm Cards",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              title: Text(
                "Netbanking",
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.chevron_right),),
          ],
        ),
      ),
    );
  }
}
