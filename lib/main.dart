import 'package:barkode_app/Contact.dart';
import 'package:barkode_app/Settings.dart';
import 'package:barkode_app/more.dart';
import 'package:flutter/material.dart';
import 'Service.dart';
import 'login.dart';
import 'signup.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Barkod',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: MyHomePage(title: 'Barkod 724'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

Widget popupMennuButton(){
  return PopupMenuButton<String>(
      icon :Icon(Icons.more_horiz, size: 26.0,),
    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
      PopupMenuItem<String>(
      value: "Settings",
        child:Text("Settings")
      ),

      PopupMenuItem<String>(
          value: "About",
          child:Text("About Us")
      )
    ],
  onSelected: (retval){
        if(retval=="About"){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder:(context)
                  {return Aboutscreen();} ) );
        }
        else if(retval=="Settings"){
          Navigator.push(
              context,
              MaterialPageRoute(
                builder:(context)
                { return Settingscreen();}) );

        }

  },

  );
}
Widget PopupButton(){

  return PopupMenuButton<String>(
    icon :Icon(Icons.more_horiz, size: 26.0,),
    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
      PopupMenuItem<String>(
          value: "Settings",
          child:Text("Settings")
      ),

      PopupMenuItem<String>(
          value: "About",
          child:Text("About Us")
      )
    ],
    onSelected: (retval){
      if(retval=="About"){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder:(context)
                {return Aboutscreen();} ) );
      }
      else if(retval=="Settings"){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder:(context)
                { return Settingscreen();}) );

      }

    },

  );

}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
         actions: <Widget>[

           Padding(padding: EdgeInsets.only(right: 20.0),
               child: GestureDetector(
                   onTap: () {   },
                   child:Icon(Icons.help  , size: 26.0,)
               )
           ),
                  popupMennuButton(),

        ],

      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 170,
              color: Colors.purpleAccent,
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10.0),),
                  SizedBox(height: 20.0,),
                  Image(image: AssetImage("images/barkode.jpeg"),),
                  Text("Barkod724",
                    style: TextStyle(
                      fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'
                    ),

                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(" Services"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:(context)
                          {return Servicescreen();} ) );
                },

            ),
            ListTile(
              title: Text("About Us"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:(context)
                        {return Aboutscreen();} ) );
                 },

            ),
            ListTile(
              title: Text("Contact Us"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:(context)
                          {return Contactscreen();} ) );
                },

            ),
            ListTile(
              title: Text("Log Out"),
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
                          home: MyHomePage(title: 'Barkod 724'),

                        );;} ) );
              },
            ),
            ListTile(
              title: Text("Settings"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:(context)
                          {return Settingscreen();} ) );
                },
            ),
            Divider(),
          ],
        ),
      ),






      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 130.0, 0.0, 0.0),
                  child: Text(
                  'Welcome to Barkod 724',
                   style: TextStyle(
                     color: Colors.purple, fontSize: 25.0, fontWeight: FontWeight.bold
                   )
              )
            ),
            Container(
                padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[

                    SizedBox(height: 40.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.purpleAccent,
                        color: Colors.purple,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {
                               Navigator.push(
                              context,
                                   MaterialPageRoute(
                                       builder:(context)
                                       {return loginscreen();} ) ); },
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ),
                    ),

                     SizedBox(height: 40.0),
                    Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.purpleAccent,
                        color: Colors.purple,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder:(context)
                                  {return signupscreen();} ) ); },
                          child: Center(
                            child: Text(
                              'SIGNUP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ),
                    ),
           
            ]
           )
           ),
          ],
        ),
      ),
    );
  }
}
