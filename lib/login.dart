import 'package:flutter/material.dart';
import 'package:hackathon_app/constants.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xffd4130f),
                borderRadius: BorderRadius.circular(20)),
            width: 250,
            height: 400,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RawMaterialButton(
                    elevation: 40,
                    splashColor: Colors.transparent,
                    onPressed: () {
                      Navigator.pushNamed(context, '/2');
                    },
                    child: Text(
                      "Sign In",
                      style: ktextstyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                  ),
                  Text(
                    "or",
                    style: ktextstyle.copyWith(fontSize: 30),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                  ),
                  RawMaterialButton(
                    elevation: 0,
                    splashColor: Colors.transparent,
                    onPressed: () {
                      Navigator.pushNamed(context, '3');
                    },
                    child: Text(
                      "Sign Up",
                      style: ktextstyle,
                    ),
                  ),
                  Text(
                    "or",
                    style: ktextstyle.copyWith(fontSize: 30),
                  ),
                  RawMaterialButton(
                    elevation: 0,
                    splashColor: Colors.transparent,
                    onPressed: () {
                      Navigator.pushNamed(context, '14');
                    },
                    child: Text(
                      "Admin Login",
                      style: ktextstyle,
                    ),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xffd4130f),
                borderRadius: BorderRadius.circular(20)),
            width: 250,
            height: 400,
            child: Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(bottom:30),),
                  Text(
                    "Sign In",
                    style: ktextstyle,
                  ),
                  Padding(padding: EdgeInsets.only(bottom:80),),
                  Container(
                    height: 30,
                    width: 200,
                    child: TextField(
                      style: ktextstyle.copyWith(fontSize: 25),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: "Name",
                        labelStyle: TextStyle(fontSize:20,color: Colors.white70),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom:20),),
                  Container(
                    height: 30,
                    width: 200,
                    child: TextField(
                      style: ktextstyle.copyWith(fontSize: 25),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        disabledBorder: InputBorder.none,
                        labelText: "Number",
                        labelStyle: TextStyle(fontSize :20,color: Colors.white70),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom:40),), 
                  RawMaterialButton(onPressed: (){
                    Navigator.pushNamed(context, '4');
                  },
                  splashColor: Colors.transparent,
                  child: Text("Go",style: ktextstyle,),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
     return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xffd4130f),
                borderRadius: BorderRadius.circular(20)),
            width: 250,
            height: 400,
            child: Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(bottom:30),),
                  Text(
                    "Sign Up",
                    style: ktextstyle,
                  ),
                  Padding(padding: EdgeInsets.only(bottom:60),),
                  Container(
                    height: 30,
                    width: 200,
                    child: TextField(
                      style: ktextstyle.copyWith(fontSize: 25),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: "Userame",
                        labelStyle: TextStyle(fontSize:20,color: Colors.white70),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom:20),),
                  Container(
                    height: 30,
                    width: 200,
                    child: TextField(
                      style: ktextstyle.copyWith(fontSize: 25),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: "email",
                        labelStyle: TextStyle(fontSize:20,color: Colors.white70),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom:20),),
                  Container(
                    height: 30,
                    width: 200,
                    child: TextField(
                      style: ktextstyle.copyWith(fontSize: 25),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        disabledBorder: InputBorder.none,
                        labelText: "Number",
                        labelStyle: TextStyle(fontSize :20,color: Colors.white70),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom:40),), 
                  RawMaterialButton(onPressed: (){
                    Navigator.pushNamed(context, '4');
                  },
                  splashColor: Colors.transparent,
                  child: Text("Go",style: ktextstyle,),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class Adminlogin extends StatefulWidget {
  @override
  _AdminloginState createState() => _AdminloginState();
}

class _AdminloginState extends State<Adminlogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xffd4130f),
                borderRadius: BorderRadius.circular(20)),
            width: 250,
            height: 400,
            child: Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(bottom:30),),
                  Text(
                    "Admin Login",
                    style: ktextstyle,
                  ),
                  Padding(padding: EdgeInsets.only(bottom:80),),
                  Container(
                    height: 30,
                    width: 200,
                    child: TextField(
                      style: ktextstyle.copyWith(fontSize: 25),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: "Res-id:",
                        labelStyle: TextStyle(fontSize:20,color: Colors.white70),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom:20),),
                  Container(
                    height: 30,
                    width: 200,
                    child: TextField(
                      style: ktextstyle.copyWith(fontSize: 25),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        disabledBorder: InputBorder.none,
                        labelText: "Password",
                        labelStyle: TextStyle(fontSize :20,color: Colors.white70),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom:40),), 
                  RawMaterialButton(onPressed: (){
                    Navigator.pushNamed(context, '15');
                  },
                  splashColor: Colors.transparent,
                  child: Text("Login",style: ktextstyle,),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
