import 'package:flutter/material.dart';
import 'Home.dart';


class Settingsscreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MySettingsPage(title: 'Settings'),
    );
  }
}

class MySettingsPage extends StatefulWidget {
  MySettingsPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MySettingsPageState createState() => _MySettingsPageState();
}

class _MySettingsPageState extends State<MySettingsPage> {

  @override
  Widget build(BuildContext context) {
    bool boolval=false;
    bool eval=false;
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
            child: Column(
              children: <Widget>[
                //General
                Container(
                    padding: EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
                    child: Text(
                      'General:',
                      style: TextStyle(
                          color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold
                      ),)
                ),
                //Notifications
                Container(
                  child: Row(
                    children: <Widget>[
                      FlatButton.icon(onPressed: (){  } ,
                        icon: Icon(
                          Icons.notification_important,
                          color: Colors.black,
                          size: 20.0,
                        ),
                        label: Text(
                          "Notifications                             ",

                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                      Switch(
                        value: boolval,
                        onChanged: (value ){
                          setState(() {
                            boolval= value;
                            print(boolval);
                          });
                        },
                        activeTrackColor: Colors.purpleAccent,
                        activeColor: Colors.purple,
                      ),
                    ],
                  ),
                ),

                Container(
                  child: Row(
                    children: <Widget>[
                      FlatButton.icon(onPressed: (){} ,
                        icon: Icon(
                          Icons.mail,
                          color: Colors.black,
                          size: 20.0,
                        ),
                        label: Text(
                          "Email me about new services ",
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                      Switch(
                        value: eval,
                        onChanged: (bool x){
                          setState(() {
                            eval= x;
                          });
                        },
                      ),
                    ],
                  ),
                ),

                Container(
                    padding: EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
                    child: Text(
                      'Support:',
                      style: TextStyle(
                          color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold
                      ),)
                ),


                //Help and support
                Container(
                  child: Row(
                    children: <Widget>[
                      FlatButton.icon(onPressed: (){},
                          icon: Icon(Icons.help
                          ),
                          label: Text(
                              "Help and Support                    ▶",
                              style: TextStyle(
                                fontSize: 20.0,
                              )
                          ))

                    ],
                  ),
                ),
                //Give us feedback
                Container(
                  child: Row(
                    children: <Widget>[
                      FlatButton.icon(onPressed: (){},
                          icon: Icon(Icons.announcement
                          ),
                          label: Text(
                              "Give us feedback                    ▶",
                              style: TextStyle(
                                fontSize: 20.0,
                              )
                          ))

                    ],
                  ),
                ),

                //Rate this app
                Container(
                  child: Row(
                    children: <Widget>[
                      FlatButton.icon(onPressed: (){},
                          icon: Icon(Icons.star
                          ),
                          label: Text(
                              "Rate this app                           ▶",
                              style: TextStyle(
                                fontSize: 20.0,
                              )
                          ))

                    ],
                  ),
                ),

                //Share the App
                Container(
                  child: Row(
                    children: <Widget>[
                      FlatButton.icon(onPressed: (){},
                          icon: Icon(Icons.share
                          ),
                          label: Text(
                              "Share the App                         ▶",
                              style: TextStyle(
                                fontSize: 20.0,
                              )
                          ))

                    ],
                  ),
                ),

                //Facebook and Instagram
                Container(
                  child: Row(
                    children: <Widget>[
                      FlatButton.icon(onPressed: (){ },
                          icon: Icon(Icons.phone_iphone
                          ),
                          label: Text(
                              "Facebook and Instagram      ▶",
                              style: TextStyle(
                                fontSize: 20.0,
                              )
                          ))

                    ],
                  ),
                ),




              ],
            )
        )
    );
  }
}
