import 'package:flutter/material.dart';

import 'home.dart';

Color colore = Color.fromRGBO(7, 163, 36, 1);
Color tab = Color.fromRGBO(243, 243, 243, 1);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: "Neutro"),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
