import 'package:barkode_app/Home.dart';
import 'package:barkode_app/Utile/Database.dart';
import 'package:flutter/material.dart';
import 'package:barkode_app/Models/user.dart';


class Creditscreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyCreditPage(title: 'Barkode724'),
    );
  }
}

class MyCreditPage extends StatefulWidget {
  MyCreditPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyCreditPageState createState() => _MyCreditPageState();
}

class _MyCreditPageState extends State<MyCreditPage> {
  String CardNo='No card';
  String Name;
  int counter1,counter2;
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
        body:
        Center(
            child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 60.0, left:0.0, right:0.0),
                    child: Column(
                      children: <Widget>[

                        Container(
                          child: Center(
                            child: Text(
                              "Card Credit"
                              ,
                              style: TextStyle(color: Colors.purple,
                                fontFamily: 'Montserrat',fontSize: 25.0,),
                            ),
                          )
                        ),


                      ],


                    ),
                  ),


                  Container(
                      padding: EdgeInsets.only(top: 200.0, left: 0, right:0.0),
                      child: Column(
                        children: <Widget>[

                          Container(
                            child: Text(
                              "Card Number                                                         $CardNo",

                              style: TextStyle(color: Colors.black,
                                  fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                  ),

                  Container(
                      padding: EdgeInsets.only(top: 250.0, left: 0, right:0.0),
                      child: Column(
                        children: <Widget>[

                          Container(
                            child: Text(
                              "Card Holder                                                                   $Name"
                              ,
                              style: TextStyle(color: Colors.black,
                                  fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                  ),

                  Container(
                      padding: EdgeInsets.only(top: 300.0, left: 0, right:0.0),
                      child: Column(
                        children: <Widget>[

                          Container(
                              child: Text(
                               "Available credits                                                          $counter1"
                                ,
                                style: TextStyle(color: Colors.black,
                                  fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                              )

                          ),
                        ],
                      )
                  ),

                  Container(
                      padding: EdgeInsets.only(top: 350.0, left: 0, right:0.0),
                      child: Column(
                        children: <Widget>[

                          Container(
                              child: Text(
                                "Credit limit                                                                    $counter2"
                                ,
                                style: TextStyle(color: Colors.black,
                                  fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                              )

                          ),
                        ],
                      )
                  ),

              Container(
                 padding: EdgeInsets.only(top: 470.0, left: 150, right:0.0),
                 child: Column(
                   children: <Widget>[
                     FlatButton(
                       onPressed: () {

                       },
                       child: new Icon(
                         Icons.add,
                         color: Colors.white,
                         size: 50.0,
                       ),
                       shape: new CircleBorder(),
                       color: Colors.purple,
                     )

                   ],
                 )
              )





                ]
            )
        )
    );
  }
}
