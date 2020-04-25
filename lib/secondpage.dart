import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'main.dart';

class Secongpage extends StatefulWidget {
  @override
  _SecongpageState createState() => _SecongpageState();
}

class _SecongpageState extends State<Secongpage> {
  @override
  Widget build(BuildContext context) {
    EdgeInsets padsingEdge = EdgeInsets.only(left: 30.0, right: 30.0);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20.0,),
        color: Color.fromRGBO(250, 250, 250, 1),
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: height / 30,
            ),
            Padding(
              padding: padsingEdge,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: colore,
                      ),
                      Text(
                        "Warsaw, Poland",
                        style: TextStyle(
                            color: colore,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://semantic-ui.com/images/avatar2/large/matthew.png"))),
                    height: 45.0,
                    width: 45.0,
                  )
                ],
              ),
            ),
            SizedBox(
              height: height / 100,
            ),
            Padding(
              padding: padsingEdge,
              child: Text(
                "Adopt\nAnimals",
                style: TextStyle(fontSize: height/25.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: height / 50,
            ),
            Padding(
              padding: padsingEdge,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: tab),
                      height: height / 13,
                      width: width / 1.6,
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 20.0),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              border: InputBorder.none),
                        ),
                      )),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0), color: tab),
                    height: height / 13,
                    width: height / 13,
                    child: Center(
                      child: Icon(
                        Octicons.settings,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height / 40,
            ),
            Padding(
              padding: padsingEdge,
              child: Text(
                "Trending categories",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: height/45.0),
              ),
            ),
            SizedBox(
              height: height / 50,
            ),
            Padding(
              padding: padsingEdge,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  tabs("Dog", "assets/images/dog.png"),
                  tabs("Cat", "assets/images/cat.png"),
                  tabs("Whale", "assets/images/whales.png"),
                  tabs("Unicorn", "assets/images/unicorn.png"),
                ],
              ),
            ),
            SizedBox(
              height: height / 30,
            ),
            Padding(
              padding: padsingEdge,
              child: Text(
                "Around you",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: height/45.0),
              ),
            ),
            SizedBox(
              height: height / 60,
            ),
            Container(
                height: height / 2.8,
                width: width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    aroundYouPets(
                        "assets/images/image1.jpeg", "Elon", "3.6 km"),
                    aroundYouPets(
                        "assets/images/image2.jpeg", "Mrs. Smith", "6.3 km")
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget tabs(String text, String image) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Container(
          height: height / 6.5,
          width: height / 6.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: tab,
          ),
          child: Center(
              child: Container(
            height: height / 13,
            width: height / 13,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(image))),
          )),
        ),
        SizedBox(
          height: height / 30,
        ),
        Text(
          text,
          style: TextStyle(
              color: Color.fromRGBO(
                158,
                158,
                158,
                1,
              ),
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget aroundYouPets(String image, String name, String distance) {
    double height = MediaQuery.of(context).size.height / 2.8;
    double width = MediaQuery.of(context).size.width / 2.2;
    return Padding(
      padding: EdgeInsets.only(left: 35.0),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        elevation: 0.0,
        child: Container(
          height: height,
          width: width,
          child: Column(
            children: <Widget>[
              Container(
                height: height / 1.5,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
              ),
              Container(
                padding: EdgeInsets.only(left: 15.0),
                height: height / 3.5,
                width: width,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Color.fromRGBO(220, 220, 220, 1),
                          size: 22.0,
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          distance,
                          style: TextStyle(
                              color: Color.fromRGBO(220, 220, 220, 1),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//so now almost the design is completed and ready to use on amy device
//truly thanks to the micheal for the design //
//do share and like subscribe to our channel for the work..
//and  dont forget to follow michel for her designs..
//her designs on instagram link coming in the video...
