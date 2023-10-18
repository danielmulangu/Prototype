import 'package:barkode_app/Home.dart';
import 'package:barkode_app/Utile/Database.dart';
import 'package:barkode_app/main.dart';
import 'package:flutter/material.dart';
import 'package:barkode_app/Models/user.dart';


class loginscreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyLoginPage(title: 'Barkod 724'),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  MyLoginPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  get password => null;
  get CardNo =>null;

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
                title: 'Flutter Barkod',
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
     body: Center(
       child : Column(
      children: <Widget>[
        Container(
            padding: EdgeInsets.fromLTRB(10.0, 60.0, 0.0, 0.0),
            child: Text(
                'Log in',
                style: TextStyle(
                    color: Colors.purple, fontSize: 25.0, fontWeight: FontWeight.bold
                )
            )
        ),
         Container(
           padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
           child: Column(
             children: <Widget>[
               TextField(
                 decoration: InputDecoration(
                     labelText: 'Card No',
                     labelStyle: TextStyle(
                         fontFamily: 'Montserrat',
                         fontWeight: FontWeight.bold,
                         color: Colors.grey),
                     focusedBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Colors.purple))),
               ),

               SizedBox(height: 20.0),
               TextField(
                 decoration: InputDecoration(
                     labelText: 'PASSWORD',
                     labelStyle: TextStyle(
                         fontFamily: 'Montserrat',
                         fontWeight: FontWeight.bold,
                         color: Colors.grey),
                     focusedBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Colors.purple))),
                 obscureText: true,
               ),

               SizedBox(height: 5.0),
               Container(
                 alignment: Alignment(1.0, 0.0),
                 padding: EdgeInsets.only(top: 15.0, left: 20.0),
                 child: InkWell(
                   child: Text(
                     'Forgot Password?',
                     style: TextStyle(
                         color: Colors.purple,
                         fontWeight: FontWeight.bold,
                         fontFamily: 'Montserrat',
                         decoration: TextDecoration.underline),
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
                     onTap: () {

                       var newDbUser =User(CardNo: CardNo ,password: password );
                       DBProvider.db.newUser(newDbUser);
                       Navigator.push(
                           context,
                           MaterialPageRoute(
                               builder:(context)
                               {return Homescreen();} ) );

                     },
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

               SizedBox(height: 20.0),
               Container(
                 height: 40.0,
                 child: Material(
                   borderRadius: BorderRadius.circular(20.0),
                   shadowColor: Colors.lightBlueAccent,
                   color: Colors.lightBlue,
                   elevation: 7.0,

                   child: GestureDetector(
                     onTap: () {    },
                     child: Center(
                       child: Text(
                         'Log in with Google',
                         style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontFamily: 'Montserrat'),
                       ),
                     ),
                   ),
                 ),
               ),

               SizedBox(height: 20.0),
               Container(
                 height: 40.0,
                 child: Material(
                   borderRadius: BorderRadius.circular(20.0),
                   shadowColor: Colors.blueAccent,
                   color: Colors.blueAccent,
                   elevation: 7.0,
                   child: GestureDetector(
                     onTap: () {     },
                     child: Center(
                       child: Text(
                         'Log in with Facebook',
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

      ],
       )
     ),
    );
  }
}