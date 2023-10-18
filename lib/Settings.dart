import 'package:barkode_app/main.dart';
import 'package:flutter/material.dart';



class Settingscreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MySettingPage(title: 'Settings'),
    );
  }
}

class MySettingPage extends StatefulWidget {
  MySettingPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MySettingPageState createState() => _MySettingPageState();
}

class _MySettingPageState extends State<MySettingPage> {
  bool boolval=false;
  bool eval=false;
  onSwitchValue(bool newval){
    setState(() {
      boolval=newval;
    });
  }
  onSwitched(bool x){
    setState(() {
      eval=x;
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
                      {return MaterialApp(
                        title: 'Settings',
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
                  FlatButton.icon(onPressed: (){ boolval=true; } ,
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
                    onChanged: (newval){
                     onSwitchValue(newval);
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
                    onChanged: (x){
                     onSwitched(x);
                    },
                    activeTrackColor: Colors.purpleAccent,
                    activeColor: Colors.purple,
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
