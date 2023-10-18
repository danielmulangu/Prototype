import 'package:barkode_app/main.dart';
import 'package:flutter/material.dart';


class Servicescreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyServicePage(title: 'Services'),
    );
  }
}

class MyServicePage extends StatefulWidget {
  MyServicePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyServicePageState createState() => _MyServicePageState();
}

class _MyServicePageState extends State<MyServicePage> {

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
                          title: 'Services',
                          theme: ThemeData(
                            primarySwatch: Colors.purple,
                            visualDensity: VisualDensity.adaptivePlatformDensity,
                          ),
                          //routes:<String, WidgetBuilder>{ '/signup':(BuildContext context) => new signup()}
                          home: MyHomePage(title: 'Barkod 724'),

                        );;} ) );
              },
              child: Icon(Icons.arrow_back_ios,)
          ),
        ),
        body:
        Center(
          child: Stack(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(top: 25.0, left: 5.0, right:0.0),
                  child: Column(
                    children: <Widget>[

                      Container(
                        child: Text(
                          "Barcode is considered to be one of the most practical solutions that could be offered for "
                              " manipulating barcode operations. Barcode724 is a comprehensive distributed solution that consists of"
                             ,
                          style: TextStyle(color: Colors.black,
                              fontFamily: 'Montserrat'),
                        ),
                      ),


                    ],


                 ),
              ),

              Container(
                  padding: EdgeInsets.only(top: 100.0, left: 0, right:0.0),
                  child: Column(
                    children: <Widget>[

                      Container(
                        child: Text(
                          "-e-Barcode724 "
                          ,
                          style: TextStyle(color: Colors.black,
                              fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
              ),

              Container(
                  padding: EdgeInsets.only(top: 120.0, left: 0, right:0.0),
                  child: Column(
                    children: <Widget>[

                      Container(
                        child: Text(
                          "-ABM"
                          ,
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
                          "-e-Barcode724 offers an international access to our barcode solution over the global internet network."
                          " It facilitates barcode-related operations through offering several services presented using an extremely"
                              "easy-toi-use graphical-user-interface. It offers:"
                          ,
                          style: TextStyle(color: Colors.black,
                              fontFamily: 'Montserrat', ),
                        )

                      ),
                    ],
                  )
              ),

              Container(
                  padding: EdgeInsets.only(top: 290.0, left: 0, right:0.0),
                  child: Column(
                    children: <Widget>[

                      Container(
                          child: Text(
                            "• New barcode generation and verifiaction."
                            ,
                            style: TextStyle(color: Colors.black,
                              fontFamily: 'Montserrat', ),
                          )

                      ),
                    ],
                  )
              ),


              Container(
                  padding: EdgeInsets.only(top: 320.0, left: 0, right:0.0),
                  child: Column(
                    children: <Widget>[

                      Container(
                          child: Text(
                            "• Requesting barcode painting."
                            ,
                            style: TextStyle(color: Colors.black,
                              fontFamily: 'Montserrat', ),
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
                            "• Adding new products."
                            ,
                            style: TextStyle(color: Colors.black,
                              fontFamily: 'Montserrat', ),
                          )

                      ),
                    ],
                  )
              ),

              Container(
                  padding: EdgeInsets.only(top: 380.0, left: 0, right:0.0),
                  child: Column(
                    children: <Widget>[

                      Container(
                          child: Text(
                            "• Credits investigation."
                            ,
                            style: TextStyle(color: Colors.black,
                              fontFamily: 'Montserrat', ),
                          )

                      ),
                    ],
                  )
              ),

              Container(
                  padding: EdgeInsets.only(top: 410.0, left: 0, right:0.0),
                  child: Column(
                    children: <Widget>[

                      Container(
                          child: Text(
                            "• Showing all firm transactions."
                            ,
                            style: TextStyle(color: Colors.black,
                              fontFamily: 'Montserrat', ),
                          )

                      ),
                    ],
                  )
              ),

              Container(
                  padding: EdgeInsets.only(top: 440.0, left: 0, right:0.0),
                  child: Column(
                    children: <Widget>[

                      Container(
                          child: Text(
                            "• Giving up-to-date reports and logs about all transactions done by members."
                            ,
                            style: TextStyle(color: Colors.black,
                              fontFamily: 'Montserrat', ),
                          )

                      ),
                    ],
                  )
              ),

              Container(
                  padding: EdgeInsets.only(top: 530.0, left: 0, right:0.0),
                  child: Column(
                    children: <Widget>[

                      Container(
                          child: Text(
                            "Our e-Barcode724 solution could be accessed  through the 'login' link after joining us by following"
                                " few steps below"
                            ,
                            style: TextStyle(color: Colors.black,
                              fontFamily: 'Montserrat', ),
                          )

                      ),
                    ],
                  )
              ),




            ]
          )
        )
    );
  }
}
