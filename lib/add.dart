import 'package:flutter/material.dart';
import 'Home.dart';


class Addscreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyAddPage(title: 'Barkod 724'),
    );
  }
}

class MyAddPage extends StatefulWidget {
  MyAddPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyAddPageState createState() => _MyAddPageState();
}

class _MyAddPageState extends State<MyAddPage> {
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
          child: Stack(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                      '                         Add Product',
                      style: TextStyle(
                          color: Colors.purple, fontSize: 20.0, fontWeight: FontWeight.bold
                      )
                  )
              ),
              Container(
                padding: EdgeInsets.only(top: 50.0, left: 0.0, right: 150.0),
                child: Column(
                  children: <Widget>[
                    ClipOval(
                      child: Material(
                        color: Colors.grey, // button color
                        child: InkWell(
                          splashColor: Colors.red, // inkwell color
                          child: SizedBox(width: 120, height: 120, child: Center(child: Text("Product Picture")),
                          ),
                          onTap: () {

                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 80.0, left: 150.0, right: 150.0),
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
                              'Upload',
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
              ),

              Container(
                  padding: EdgeInsets.fromLTRB(15.0, 200.0, 0.0, 0.0),
                  child: Text(
                      'Barcode Source',
                      style: TextStyle(
                          color: Colors.purple, fontSize: 10.0, fontWeight: FontWeight.bold
                      )
                  )
              ),

              Container(
                padding: EdgeInsets.only(top: 180.0, left: 150.0, right: 0.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 40.0,
                      width: 70.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.grey,
                        color: Colors.blueGrey,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {

                          },
                          child: Center(
                            child: Text(
                              'Auto',
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
              ),


              Container(
                padding: EdgeInsets.only(top: 180.0, left: 250.0, right: 0.0),
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
                              'Manual',
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
              ),


              Container(
                padding: EdgeInsets.only(top: 220.0, left: 15.0, right: 0.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 1.0,width: 50.0,),
                    Container(
                         height:50.0 ,
                      width: 300.0,

                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Product Name',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple))),
                        obscureText: false,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 270.0, left: 15.0, right: 0.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 1.0,width: 50.0,),
                    Container(
                      height:50.0 ,
                      width: 300.0,

                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Barcode',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple))),
                        obscureText: false,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 320.0, left: 15.0, right: 0.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 1.0,width: 50.0,),
                    Container(
                      height:50.0 ,
                      width: 300.0,

                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Price',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple))),
                        obscureText: false,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 370.0, left: 15.0, right: 0.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 1.0,width: 50.0,),
                    Container(
                      height:50.0 ,
                      width: 300.0,

                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Choose the Production Date',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple))),
                        obscureText: false,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 370.0, left: 15.0, right: 0.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 1.0,width: 50.0,),
                    Container(
                      height:50.0 ,
                      width: 300.0,

                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Choose the Production Date',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple))),
                        obscureText: false,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 370.0, left: 15.0, right: 0.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 1.0,width: 50.0,),
                    Container(
                      height:50.0 ,
                      width: 300.0,

                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Choose the Production Date',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple))),
                        obscureText: false,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 500.0, left: 150.0, right: 0.0),
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
                              'Add',
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
              ),









            ],
          ),
        )
    );
  }
}
