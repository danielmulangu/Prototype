import 'package:barkode_app/main.dart';
import 'package:flutter/material.dart';



class Contactscreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyContactPage(title: 'Contact Us'),
    );
  }
}

class MyContactPage extends StatefulWidget {
  MyContactPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyContactPageState createState() => _MyContactPageState();
}

class _MyContactPageState extends State<MyContactPage> {

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
                          title: 'Contact Us',
                          theme: ThemeData(
                            primarySwatch: Colors.purple,
                            visualDensity: VisualDensity.adaptivePlatformDensity,
                          ),

                          home: MyHomePage(title: 'Barkod 724'),

                        );;} ) );
              },
              child: Icon(Icons.arrow_back_ios,)
          ),
        ),
        body:
        Stack(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 50, 260.0, 350.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding:const EdgeInsets.all(5.0),
                    child: Container(
                            child: RaisedButton.icon(
                              color: Colors.purple,
                                onPressed: (){ }
                                , icon: Padding(
                                   padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                                   child: Icon(
                                Icons.location_on,
                                     color: Colors.black87,
                              ),
                            ),
                                label: Text(" ")
                            ),
                    ),
                  )
                ],
              )
            ),

            Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 50, 0,0.0),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding:const EdgeInsets.all(5.0),
                      child: Container(
                        child: RaisedButton.icon(
                            color: Colors.purple,
                            onPressed: (){ }
                            , icon: Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                          child: Icon(
                            Icons.call,
                            color: Colors.black87,
                          ),
                        ),
                            label: Text(" ")
                        ),
                      ),
                    )
                  ],
                )
            ),

            Padding(
                padding: const EdgeInsets.fromLTRB(260, 50, 0,0.0),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding:const EdgeInsets.all(5.0),
                      child: Container(
                        child: RaisedButton.icon(
                            color: Colors.purple,
                            onPressed: (){ }
                            , icon: Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                              child: Icon(
                            Icons.mail,
                            color: Colors.black87,
                          ),
                        ),
                            label: Text(" ")
                        ),
                      ),
                    )
                  ],
                )
            ),


            Container(
              padding: EdgeInsets.only(top: 150.0, left: 20.0, right: 20.0),
               child: Column(
                 children: <Widget>[
                   SizedBox(height: 25.0,),
                   Container(
                     height: 25.0,
                     child: Text(
                       "Address:",
                       style: TextStyle(color: Colors.black,fontSize: 20.0,
                           fontWeight: FontWeight.bold,
                           fontFamily: 'Montserrat'),
                     ),
                   ),

                 ],
               )
            ),
            Container(
                padding: EdgeInsets.only(top: 175.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 25.0,),
                    Container(
                      height: 25.0,
                      child: Text(
                        "61 Bolu Sokak Kizilbas- Nicosia, Cyprus(North)",
                        style: TextStyle(color: Colors.black,fontSize: 15.0,
                            fontFamily: 'Montserrat'),
                      ),
                    ),

                  ],
                )
            ),

            Container(
                padding: EdgeInsets.only(top: 250.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 25.0,),
                    Container(
                      height: 25.0,
                      child: Text(
                        "Telephone Numbers:",
                        style: TextStyle(color: Colors.black,fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                  ],
                )
            ),

            Container(
                padding: EdgeInsets.only(top: 280.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 25.0,),
                    Container(
                      height: 25.0,
                      child: Text(
                        "Tel: +90 392 228 00 78",
                        style: TextStyle(color: Colors.black,fontSize: 15.0,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.only(top: 310.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 25.0,),
                    Container(
                      height: 25.0,
                      child: Text(
                        "Fax: +90 392 227 71 25",
                        style: TextStyle(color: Colors.black,fontSize: 15.0,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                  ],
                )
            ),

            Container(
                padding: EdgeInsets.only(top: 385.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 25.0,),
                    Container(
                      height: 25.0,
                      child: Text(
                        "Email:",
                        style: TextStyle(color: Colors.black,fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                  ],
                )
            ),

            Container(
                padding: EdgeInsets.only(top: 410.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 25.0,),
                    Container(
                      height: 25.0,
                      child: Text(
                        "barcode@GigaByteLtd.com",
                        style: TextStyle(color: Colors.black,fontSize: 15.0,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                  ],
                )
            ),
          ],
        )
    );
  }
}
