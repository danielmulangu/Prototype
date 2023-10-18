import 'package:barkode_app/Home.dart';
import 'package:barkode_app/Utile/Database.dart';
import 'package:flutter/material.dart';
import 'package:barkode_app/Models/user.dart';


class Transactionscreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyTransactionPage(title: 'Barkode724'),
    );
  }
}

class MyTransactionPage extends StatefulWidget {
  MyTransactionPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyTransactionPageState createState() => _MyTransactionPageState();
}

class _MyTransactionPageState extends State<MyTransactionPage> {
  int count1,count2,count3,count4,count5;
  String data1,data2, data3, data4;
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
                                "Transaction Report"
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
                      padding: EdgeInsets.only(top: 120.0, left: 0, right:0.0),
                      child: Column(
                        children: <Widget>[

                          Container(
                            child: Text(
                              "Card Number                                                                   $data1",

                              style: TextStyle(color: Colors.black,
                                  fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                  ),

                  Container(
                      padding: EdgeInsets.only(top: 150.0, left: 0, right:0.0),
                      child: Column(
                        children: <Widget>[

                          Container(
                            child: Text(
                              "Card Holder                                                                     $data2"
                              ,
                              style: TextStyle(color: Colors.black,
                                  fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                  ),

                  Container(
                      padding: EdgeInsets.only(top: 180.0, left: 0, right:0.0),
                      child: Column(
                        children: <Widget>[

                          Container(
                              child: Text(
                                "Firm Code                                                                         $data3"
                                ,
                                style: TextStyle(color: Colors.black,
                                    fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                              )

                          ),
                        ],
                      )
                  ),

                  Container(
                      padding: EdgeInsets.only(top: 210.0, left: 0, right:0.0),
                      child: Column(
                        children: <Widget>[

                          Container(
                              child: Text(
                                "Firm Name                                                                        $data4"
                                ,
                                style: TextStyle(color: Colors.black,
                                    fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                              )

                          ),
                        ],
                      )
                  ),

                  Container(
                      padding: EdgeInsets.only(top: 240.0, left: 0, right:0.0),
                      child: Column(
                        children: <Widget>[

                          Container(
                              child: Text(
                                "Number of printed barcode                                       $count1"
                                ,
                                style: TextStyle(color: Colors.black,
                                    fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                              )

                          ),
                        ],
                      )
                  ),

                  Container(
                      padding: EdgeInsets.only(top: 270.0, left: 0, right:0.0),
                      child: Column(
                        children: <Widget>[

                          Container(
                              child: Text(
                                "Number of added product                                          $count2"
                                ,
                                style: TextStyle(color: Colors.black,
                                    fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                              )

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
                                "Total Debt                                                                        $count3 "
                                ,
                                style: TextStyle(color: Colors.black,
                                    fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                              )

                          ),
                        ],
                      )
                  ),

                  Container(
                      padding: EdgeInsets.only(top: 330.0, left: 0, right:0.0),
                      child: Column(
                        children: <Widget>[

                          Container(
                              child: Text(
                                "Total Credit                                                                      $count4 "
                                ,
                                style: TextStyle(color: Colors.black,
                                    fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                              )

                          ),
                        ],
                      )
                  ),

                  Container(
                      padding: EdgeInsets.only(top: 360.0, left: 0, right:0.0),
                      child: Column(
                        children: <Widget>[

                          Container(
                              child: Text(
                                "Total available credit                                                    $count5"
                                ,
                                style: TextStyle(color: Colors.black,
                                    fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                              ),


                          ),
                        ],
                      )
                  ),



                  Container(
                      padding: EdgeInsets.only(top: 420.0, left: 150, right:0.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 70.0,
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
                                    'Details',
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
                      )
                  )





                ]
            )
        )
    );
  }
}
