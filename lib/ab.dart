import 'package:flutter/material.dart';
import 'Home.dart';


class Aboutsscreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyAboutsPage(title: 'About Barkod 724'),
    );
  }
}

class MyAboutsPage extends StatefulWidget {
  MyAboutsPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyAboutsPageState createState() => _MyAboutsPageState();
}

class _MyAboutsPageState extends State<MyAboutsPage> {

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
        body:
        Stack(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 25.0, left: 5.0, right:0.0),
                child: Column(
                  children: <Widget>[

                    Container(
                      child: Text(
                        " Since 1994 we are in North Cyprus's Marketplace. The aim of our fondation is to educate how to"
                            " give more qualified education,"
                            " consious technology  using with good friendship. The critiques proved that we can realise our aims.",
                        style: TextStyle(color: Colors.black,
                            fontFamily: 'Montserrat'),
                      ),
                    ),

                  ],
                )
            ),

            Container(
                padding: EdgeInsets.only(top: 120.0, left: 5.0, right:0.0),
                child: Column(
                  children: <Widget>[

                    Container(
                      child: Text(
                        "North Cyprus is located at the North  side of the island. Cyprus is the third biggest island after Sicilya and"
                            " Sardunya in the Mediterranean Sea. Since 1974 Cyprus Island has divided into two parts. One is North"
                            "(Turkish) and the other one is south(Greek)."
                            " North is at 70km south of Turkey. It has a population of 200,587 and national income is approximately "
                            "5,000 US per year per person."
                        ,
                        style: TextStyle(color: Colors.black,
                            fontFamily: 'Montserrat'),
                      ),
                    ),

                  ],
                )
            ),

            Container(
                padding: EdgeInsets.only(top: 270.0, left: 5.0, right:0.0),
                child: Column(
                  children: <Widget>[

                    Container(
                      child: Text(
                        "To cover the marketplac e requests the company import, write and also give course of Progrmas "
                            "to improve customer wallet ."
                        ,
                        style: TextStyle(color: Colors.black,
                            fontFamily: 'Montserrat'),
                      ),
                    ),

                  ],
                )
            ),

            Container(
                padding: EdgeInsets.only(top: 330.0, left: 5.0, right:0.0),
                child: Column(
                  children: <Widget>[

                    Container(
                      child: Text(
                        "In 1995-1996 years Gigabyte gave services only in Education and writing software for customers satisfaction."
                            " Again in 1997 we open our service center and computer accessories store. In this respect Gigabyte Ltd"
                            " is not only an education center, it is also a Network and Automation service and education center "
                            "in this marketplace."
                        ,
                        style: TextStyle(color: Colors.black,
                            fontFamily: 'Montserrat'),
                      ),
                    ),

                  ],
                )
            ),

            Container(
                padding: EdgeInsets.only(top: 460.0, left: 5.0, right:0.0),
                child: Column(
                  children: <Widget>[

                    Container(
                      child: Text(
                        "In 1998 we give Market and Store Automation systems seminars to inform the market and shop sectors and we"
                            " are the first firm who produce solutions and give support."
                        ,
                        style: TextStyle(color: Colors.black,
                            fontFamily: 'Montserrat'),
                      ),
                    ),

                  ],
                )
            ),

            Container(
                padding: EdgeInsets.only(top: 540.0, left: 5.0, right:0.0),
                child: Column(
                  children: <Widget>[

                    Container(
                      child: Text(
                        " 'Marking time' is not in our principles so GigaByte is in every part of the computing technology. "

                        ,
                        style: TextStyle(color: Colors.black,
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
