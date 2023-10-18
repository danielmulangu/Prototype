import 'package:flutter/material.dart';
import 'Home.dart';
import 'Request.dart';
import 'package:flutter/scheduler.dart' show timeDilation;


class Onescreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: One(title: 'Barkod 724'),
    );
  }
}








class One extends StatefulWidget{
  One({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _OneState createState() => _OneState();
}
class _OneState extends State<One>{

  @override
  Widget build(BuildContext context) {
    bool _checked=false;
    bool _oned=true;
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
                    shadowColor: Colors.purpleAccent,
                    color: Colors.purple,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        One();
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

                    shadowColor: Colors.grey,
                    color: Colors.blueGrey,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder:(context)
                                {return Requestscreen();} ) );
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
            padding: EdgeInsets.only(top: 220.0, left: 15.0, right: 0.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 1.0,width: 50.0,),
                Container(
                  height:50.0 ,
                  width: 300.0,

                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Copy Count',
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
              padding: EdgeInsets.fromLTRB(0.0, 290.0, 0.0, 0.0),
              child: Text(
                  '                           Contents:',
                  style: TextStyle(
                      color: Colors.black87, fontSize: 20.0, fontWeight: FontWeight.bold
                  )
              )
          ),

          Container(
              padding: EdgeInsets.only(top: 310.0, left: 0.0, right:0.0),
              child: Column(
                children: <Widget>[
                  CheckboxListTile(
                    title: Text("Product Name",style: TextStyle(
                        color: Colors.black87, fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    value: timeDilation != 1.0,
                    onChanged: (bool value)
                    {

                      setState(() {
                        timeDilation = value ? 10.0 : 1.0;
                      });
                    }
                    ,
                    controlAffinity: ListTileControlAffinity.trailing,
                  )
                ],
              )
          ),

                   Container(
              padding: EdgeInsets.only(top: 340.0, left: 0.0, right:0.0),
              child: Column(
                children: <Widget>[
                  CheckboxListTile(
                    title: Text("Barcode",style: TextStyle(
                        color: Colors.black87, fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    value: timeDilation != 1.0,
                    onChanged: (bool value)
                    {

                      setState(() {
                        timeDilation = value ? 10.0 : 1.0;
                      });
                    }
                    ,
                    controlAffinity: ListTileControlAffinity.trailing,
                  )
                ],
              )
          ),

          Container(
              padding: EdgeInsets.only(top: 370.0, left: 0.0, right:0.0),
              child: Column(
                children: <Widget>[
                  CheckboxListTile(
                    title: Text("Price",style: TextStyle(
                        color: Colors.black87, fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    value: timeDilation != 1.0,
                    onChanged: (bool value)
                    {

                      setState(() {
                        timeDilation = value ? 10.0 : 1.0;
                      });
                    }
                    ,
                    controlAffinity: ListTileControlAffinity.trailing,
                  )
                ],
              )
          ),
          Container(
              padding: EdgeInsets.only(top: 400.0, left: 0.0, right:0.0),
              child: Column(
                children: <Widget>[
                  CheckboxListTile(
                    title: Text("Production date",style: TextStyle(
                        color: Colors.black87, fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    value: timeDilation != 1.0,
                    onChanged: (bool value)
                    {
                      _checked=true;
                      setState(() {
                        timeDilation = value ? 10.0 : 1.0;
                      });
                    }
                    ,
                    controlAffinity: ListTileControlAffinity.trailing,
                  )
                ],
              )
          ),
          Container(
              padding: EdgeInsets.only(top: 430.0, left: 0.0, right:0.0),
              child: Column(
                children: <Widget>[
                  CheckboxListTile(
                    title: Text("Expiration Date",style: TextStyle(
                        color: Colors.black87, fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    value: timeDilation != 0.5,
                    onChanged: (bool value)
                    {
                      _checked=true;
                      setState(() {
                        timeDilation = value ? 5.0 : 0.5;
                      });
                    }
                    ,
                    controlAffinity: ListTileControlAffinity.trailing,
                  )
                ],
              )
          ),

          Container(
              padding: EdgeInsets.only(top: 460.0, left: 0.0, right:0.0),
              child: Column(
                children: <Widget>[
                  CheckboxListTile(
                    title: Text("Empty",style: TextStyle(
                        color: Colors.black87, fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    value: timeDilation != 2.0,
                    onChanged: (bool value)
                    {
                      setState(() {
                        timeDilation = value ? 20.0 : 2.0;
                      });
                    }
                    ,
                    controlAffinity: ListTileControlAffinity.trailing,
                  )
                ],
              )
          ),

          Container(
            padding: EdgeInsets.only(top: 510.0, left: 150.0, right: 0.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 80.0,
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

    );
  }
}