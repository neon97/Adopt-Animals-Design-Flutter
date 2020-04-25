import 'package:adopt_animals/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'main.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: height,
        width: width,
        padding: EdgeInsets.all(20.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: height / 10,
            ),
            Image(image: AssetImage("assets/images/home.png")),
            SizedBox(
              height: height / 30,
            ),
            Text(
              "Find your\nnew best friend",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height / 30,
            ),
            Text(
              "Discover cute animals around",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromRGBO(
                    158,
                    158,
                    158,
                    1,
                  ),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "you and adopt them to give",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromRGBO(
                    158,
                    158,
                    158,
                    1,
                  ),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "them a new chance",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromRGBO(
                    158,
                    158,
                    158,
                    1,
                  ),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height / 20,
            ),
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: colore,
                ),
                height: width * 0.18,
                width: width * 0.18,
                child: Center(
                  child: Icon(
                    MaterialCommunityIcons.chevron_double_right,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Secongpage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
