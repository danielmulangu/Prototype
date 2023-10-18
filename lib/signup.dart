import 'package:flutter/material.dart';
import 'package:barkode_app/main.dart';

import 'Home.dart';

class signupscreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MySignupPage(title: 'Barkod 724'),
    );

  }
}

class MySignupPage extends StatefulWidget {
  MySignupPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MySignupPageState createState() => _MySignupPageState();
}

class _MySignupPageState extends State<MySignupPage> {

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
                        {return MaterialApp(
                          title: 'Flutter Barkod',
                          theme: ThemeData(
                            primarySwatch: Colors.purple,
                            visualDensity: VisualDensity.adaptivePlatformDensity,
                          ),
                          //routes:<String, WidgetBuilder>{ '/signup':(BuildContext context) => new signup()}
                          home: MyHomePage(title: 'Barkod 724'),

                        );} ) );
              },
              child: Icon(Icons.arrow_back_ios,)
          ),
        ),
        body: Center(
          child : Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                    child: Text(
                        'Sign Up ',
                        style: TextStyle(
                            color: Colors.purple, fontSize: 25.0, fontWeight: FontWeight.bold
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

                SizedBox(height: 40.0),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.purpleAccent,
                    color: Colors.purple,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder:(context)
                              {return Homescreen();} ) );
                        },
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 60.0),
                Container(
                  height: 30.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.lightBlueAccent,
                    color: Colors.lightBlue,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {     },
                      child: Center(
                        child: Text(
                          'Sign Up with Google',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10.0),
                Container(
                  height: 30.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.blueAccent,
                    color: Colors.blueAccent,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {     },
                      child: Center(
                        child: Text(
                          'Sign Up with Facebook',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  ),
                ),


              ]
          )
    ),

    );
  }
}