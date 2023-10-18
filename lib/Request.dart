import 'package:flutter/material.dart';
import 'Home.dart';
import 'Onescreen.dart';


class Requestscreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyRequestPage(title: 'Barkod 724'),
    );
  }
}

class MyRequestPage extends StatefulWidget {
  MyRequestPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyRequestPageState createState() => _MyRequestPageState();
}

class _MyRequestPageState extends State<MyRequestPage> {
int x1,x2,x3,x4,x5;
void _incrementCounter(int a) {
  setState(() {
    if(a==1){x1++;}
    else if(a==2){x2++;}
    else if(a==3){x3++;}
    else if(a==4){x4++;}
    else{x5++;}
  });

}
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
      body:Stack(
        children: <Widget>[
          Container(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Text(
                  '                     Barcode Request',
                  style: TextStyle(
                      color: Colors.purple, fontSize: 20.0, fontWeight: FontWeight.bold
                  )
              )
          ),
          Container(
              padding: EdgeInsets.fromLTRB(15.0, 100.0, 0.0, 0.0),
              child: Text(
                  'Barcode Source',
                  style: TextStyle(
                      color: Colors.purple, fontSize: 10.0, fontWeight: FontWeight.bold
                  )
              )
          ),

          Container(
            padding: EdgeInsets.only(top: 80.0, left: 150.0, right: 0.0),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder:(context)
                                {return Onescreen();} ) );


                      },
                      child: Center(
                        child: Text(
                          'One',
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
            padding: EdgeInsets.only(top: 80.0, left: 250.0, right: 0.0),
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
                        MyRequestPage();
                      },
                      child: Center(
                        child: Text(
                          'Multiple',
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
            padding: EdgeInsets.only(top: 120.0, left: 15.0, right: 0.0),
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
            padding: EdgeInsets.only(top: 170.0, left: 15.0, right: 0.0),
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
            padding: EdgeInsets.only(top: 230.0, left: 150.0, right: 0.0),
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
                          'Search',
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
              padding: EdgeInsets.only(top: 280.0, left: 0, right:0.0),
              child: Column(
                children: <Widget>[

                  Container(
                      child: Text(
                        "DIGI DS-866-TERAZI  Count: "
                        ,
                        style: TextStyle(color: Colors.black,
                            fontFamily: 'Montserrat', fontWeight: FontWeight.bold,fontSize: 19.0),
                      )

                  ),
                ],
              )
          ),

          Container(
              padding: EdgeInsets.only(top: 280.0, left: 275, right:0.0),
              child: Column(
                children: <Widget>[

                  Container(
                      child: Text(
                        '$x1',
                        style: TextStyle(color: Colors.black,
                            fontFamily: 'Montserrat', fontWeight: FontWeight.bold,fontSize: 19.0),
                      )

                  ),
                ],
              )
          ),

          Container(
              padding: EdgeInsets.only(top: 265.0, left: 300, right:0.0),
              child: Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {

                        _incrementCounter(1);


                    },
                    child: new Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20.0,
                    ),
                    shape: new CircleBorder(),
                    color: Colors.purple,
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
                        "DIGI DS-886-TERAZI  Count: "
                        ,
                        style: TextStyle(color: Colors.black,
                            fontFamily: 'Montserrat', fontWeight: FontWeight.bold,fontSize: 19.0),
                      )

                  ),
                ],
              )
          ),

          Container(
              padding: EdgeInsets.only(top: 330.0, left: 275, right:0.0),
              child: Column(
                children: <Widget>[

                  Container(
                      child: Text(
                        '$x2',
                        style: TextStyle(color: Colors.black,
                            fontFamily: 'Montserrat', fontWeight: FontWeight.bold,fontSize: 19.0),
                      )

                  ),
                ],
              )
          ),

          Container(
              padding: EdgeInsets.only(top: 315.0, left: 300, right:0.0),
              child: Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      _incrementCounter(2);
                    },
                    child: new Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20.0,
                    ),
                    shape: new CircleBorder(),
                    color: Colors.purple,
                  )

                ],
              )
          ),

          Container(
              padding: EdgeInsets.only(top: 380.0, left: 0, right:0.0),
              child: Column(
                children: <Widget>[

                  Container(
                      child: Text(
                        "DIGI DS-876-TERAZI  Count: "
                        ,
                        style: TextStyle(color: Colors.black,
                            fontFamily: 'Montserrat', fontWeight: FontWeight.bold,fontSize: 19.0),
                      )

                  ),
                ],
              )
          ),

          Container(
              padding: EdgeInsets.only(top: 380.0, left: 275, right:0.0),
              child: Column(
                children: <Widget>[

                  Container(
                      child: Text(
                        '$x3',
                        style: TextStyle(color: Colors.black,
                            fontFamily: 'Montserrat', fontWeight: FontWeight.bold,fontSize: 19.0),
                      )

                  ),
                ],
              )
          ),

          Container(
              padding: EdgeInsets.only(top: 365.0, left: 300, right:0.0),
              child: Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      _incrementCounter(3);
                    },
                    child: new Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20.0,
                    ),
                    shape: new CircleBorder(),
                    color: Colors.purple,
                  )

                ],
              )
          ),


          Container(
              padding: EdgeInsets.only(top: 430.0, left: 0, right:0.0),
              child: Column(
                children: <Widget>[

                  Container(
                      child: Text(
                        "DIGI DS-867-TERAZI  Count: "
                        ,
                        style: TextStyle(color: Colors.black,
                            fontFamily: 'Montserrat', fontWeight: FontWeight.bold,fontSize: 19.0),
                      )

                  ),
                ],
              )
          ),

          Container(
              padding: EdgeInsets.only(top: 430.0, left: 275, right:0.0),
              child: Column(
                children: <Widget>[

                  Container(
                      child: Text(
                        '$x4',
                        style: TextStyle(color: Colors.black,
                            fontFamily: 'Montserrat', fontWeight: FontWeight.bold,fontSize: 19.0),
                      )

                  ),
                ],
              )
          ),

          Container(
              padding: EdgeInsets.only(top: 415.0, left: 300, right:0.0),
              child: Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      _incrementCounter(4);
                    },
                    child: new Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20.0,
                    ),
                    shape: new CircleBorder(),
                    color: Colors.purple,

                  ),


                ],
              )
          ),


          Container(
              padding: EdgeInsets.only(top: 480.0, left: 0, right:0.0),
              child: Column(
                children: <Widget>[

                  Container(
                      child: Text(
                        "DIGI DS-867-TERAZI  Count: "
                        ,
                        style: TextStyle(color: Colors.black,
                            fontFamily: 'Montserrat', fontWeight: FontWeight.bold,fontSize: 19.0),
                      )

                  ),
                ],
              )
          ),

          Container(
              padding: EdgeInsets.only(top: 480.0, left: 275, right:0.0),
              child: Column(
                children: <Widget>[

                  Container(
                      child: Text(
                        '$x5',
                        style: TextStyle(color: Colors.black,
                            fontFamily: 'Montserrat', fontWeight: FontWeight.bold,fontSize: 19.0),
                      )

                  ),
                ],
              )
          ),

          Container(
              padding: EdgeInsets.only(top: 465.0, left: 300, right:0.0),
              child: Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      _incrementCounter(5);
                    },
                    child: new Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20.0,
                    ),
                    shape: new CircleBorder(),
                    color: Colors.purple,
                  )

                ],
              )
          )






        ],
      ),

    );
  }
}


