import 'package:flutter/material.dart';
import 'Home.dart';


class Productscreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyProductPage(title: 'Barkod 724'),
    );
  }
}

class MyProductPage extends StatefulWidget {
  MyProductPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyProductPageState createState() => _MyProductPageState();
}

class _MyProductPageState extends State<MyProductPage> {

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
                      '                        Products',
                      style: TextStyle(
                          color: Colors.purple, fontSize: 20.0, fontWeight: FontWeight.bold
                      )
                  )
              ),

              Container(
                padding: EdgeInsets.only(top: 40.0, left: 1.0, right: 0.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 1.0,width: 50.0,),
                    Container(

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
                padding: EdgeInsets.only(top: 100.0, left: 1.0, right: 0.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 1.0,width: 50.0,),
                    Container(

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
                padding: EdgeInsets.only(top: 190.0, left: 150.0, right: 0.0),
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
             CustomScrollView(

               slivers: <Widget>[
                 SliverGrid(
                   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                     maxCrossAxisExtent: 200.0,
                     mainAxisSpacing: 20.0,
                     crossAxisSpacing: 10.0,
                     childAspectRatio: 1.0,
                   ),
                   delegate: SliverChildBuilderDelegate(
                         (BuildContext context, int index) {
                       return Padding(
                           padding: const EdgeInsets.fromLTRB(45.0, 350, 0.0, 0.0),
                           child:Stack(
                             children: <Widget>[
                               Padding(
                                 padding:const EdgeInsets.all(5.0),
                                 child: Container(
                                   alignment: Alignment.center,
                                   color: Colors.blueGrey,
                                   child: RaisedButton.icon(
                                       color: Colors.blueGrey,
                                       onPressed: (){ }
                                       , icon: Padding(
                                     padding: const EdgeInsets.fromLTRB(0.0, 0, 0, 0),
                                         child: Icon(
                                       Icons.category,
                                       color: Colors.black87,
                                           size: 30.0,

                                     ),
                                   ),
                                       label: Text("Sample")
                                   ),
                                 ),
                               )
                             ],
                           )
                       );

                         },
                     childCount: 4,
                   ),
                 ),

               ],
             ),




            ],
          ),

    );
  }
}
