import 'package:barkode_app/Credit.dart';
import 'package:barkode_app/bar.dart';
import 'package:barkode_app/main.dart';
import 'package:barkode_app/ser.dart';
import 'package:barkode_app/transaction.dart';
import 'package:flutter/material.dart';
import 'Product.dart';
import 'Profile.dart';
import 'Request.dart';
import 'ab.dart';
import 'add.dart';
import 'con.dart';



class Homescreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomescreenPage(title: 'Barkode724'),
    );
  }
}

class MyHomescreenPage extends StatefulWidget {
  MyHomescreenPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomescreenPageState createState() => _MyHomescreenPageState();
}

class _MyHomescreenPageState extends State<MyHomescreenPage> {


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
                  {return Aboutsscreen();} ) );
        }
        else if(retval=="Settings"){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder:(context)
                  { return Settingsscreen();}) );

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
                  {return Aboutsscreen();} ) );
        }
        else if(retval=="Settings"){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder:(context)
                  { return Settingsscreen();}) );

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
                          {return Servicesscreen();} ) );
                },

              ),
              ListTile(
                title: Text("About Us"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:(context)
                          {return Aboutsscreen();} ) );
                },

              ),
              ListTile(
                title: Text("Contact Us"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:(context)
                          {return Contactsscreen();} ) );
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
                          {return Settingsscreen();} ) );
                },
              ),
              Divider(),
            ],
          ),
        ),


        body:
        Stack(
            children: <Widget>[

              Container(
                  padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      ClipOval(
                        child: Material(
                          color: Colors.purpleAccent, // button color
                          child: InkWell(
                            splashColor: Colors.red, // inkwell color
                            child: SizedBox(width: 150, height: 150, child: Icon(Icons.credit_card),),


                            onTap: () {

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder:(context)
                                      {return Creditscreen();} ) );
                            },
                          ),

                        ),
                      )
                    ],
                  )
              ),

              Container(
                  padding: EdgeInsets.only(top: 50.0, left: 200.0, right: 0.0),
                  child: Column(
                    children: <Widget>[
                      ClipOval(
                        child: Material(
                          color: Colors.purpleAccent, // button color
                          child: InkWell(
                            splashColor: Colors.red, // inkwell color
                            child: SizedBox(width: 150, height: 150, child: Icon(Icons.calendar_today)),

                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder:(context)
                                      {return Requestscreen();} ) );
                            },
                          ),

                        ),
                      ),
                    ],
                  ),
              ),

              Container(
                padding: EdgeInsets.only(top: 220.0, left: 20.0, right: 0.0),
                child: Column(
                  children: <Widget>[
                    ClipOval(
                      child: Material(
                        color: Colors.purpleAccent, // button color
                        child: InkWell(
                          splashColor: Colors.red, // inkwell color
                          child: SizedBox(width: 150, height: 150, child: Icon(Icons.account_balance)),

                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder:(context)
                                    {return Transactionscreen();} ) );
                          },
                        ),

                      ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(top: 220.0, left: 200.0, right: 0.0),
                child: Column(
                  children: <Widget>[
                    ClipOval(
                      child: Material(
                        color: Colors.purpleAccent, // button color
                        child: InkWell(
                          splashColor: Colors.red, // inkwell color
                          child: SizedBox(width: 150, height: 150, child: Icon(Icons.add)),

                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder:(context)
                                    {return Addscreen();} ) );
                          },
                        ),

                      ),
                    ),
                  ],
                ),
              ),

              Container(
                  padding: EdgeInsets.only(top: 390.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      ClipOval(
                        child: Material(
                          color: Colors.purpleAccent, // button color
                          child: InkWell(
                            splashColor: Colors.red, // inkwell color
                            child: SizedBox(width: 150, height: 150, child: Icon(Icons.category),),


                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder:(context)
                                      {return Productscreen();} ) );},
                          ),

                        ),
                      )
                    ],
                  )
              ),

              Container(
                  padding: EdgeInsets.only(top: 390.0, left: 200.0, right: 20.0),
                  child: Column(
                    children: <Widget>[
                      ClipOval(
                        child: Material(
                          color: Colors.purpleAccent, // button color
                          child: InkWell(
                            splashColor: Colors.red, // inkwell color
                            child: SizedBox(width: 150, height: 150, child: Icon(Icons.person),),


                            onTap: () { Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder:(context)
                                    {return Profilescreen();} ) );},
                          ),

                        ),
                      )
                    ],
                  )
              ),



            ],

        )
    );
  }
}
