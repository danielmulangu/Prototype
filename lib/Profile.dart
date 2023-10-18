import 'package:flutter/material.dart';
import 'Home.dart';


class Profilescreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyProfilePage(title: 'Barkod 724'),
    );
  }
}

class MyProfilePage extends StatefulWidget {
  MyProfilePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
 String CardNo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          leading: GestureDetector(
              onTap:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:(context)
                        {return Homescreen();} ) );
              },
              child: Icon(Icons.arrow_back_ios,)
          ),
        ),
        body:Center(
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                      'Card Number: ',
                      style: TextStyle(
                          color: Colors.purple, fontSize: 20.0, fontWeight: FontWeight.bold
                      )
                  )
              ),

              SizedBox(height: 1.0),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple))),
                obscureText: false,
              ),

              SizedBox(height: 1.0),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Surname',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple))),
                obscureText: false,
              ),

              SizedBox(height: 1.0),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Address',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple))),
                obscureText: false,
              ),

              SizedBox(height: 1.0),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Tel',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple))),
                obscureText: false,
              ),

              SizedBox(height: 1.0),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple))),
                obscureText: false,
              ),

              SizedBox(height: 1.0),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple))),
                obscureText: false,
              ),

              SizedBox(height: 1.0),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Confirm password',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple))),
                obscureText: false,
              ),
              SizedBox(height: 40.0),
              Container(
                height: 40.0,
                width: 180.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.purpleAccent,
                  color: Colors.purple,
                  elevation: 7.0,
                  child: GestureDetector(
                    onTap: () {
                       },
                    child: Center(
                      child: Text(
                        'Save Changes',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                  ),
                ),
              ),



            ],
          ),
             )
           );
  }
}
