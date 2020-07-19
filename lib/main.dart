import "package:flutter/material.dart";

import 'body.dart';
import 'titleBar.dart';
import "card.dart" as cart;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CRadar(),
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class CRadar extends StatefulWidget {
  @override
  _CRadarState createState() => _CRadarState();
}

class _CRadarState extends State<CRadar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text(
          "COVID19 RADAR",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          TitleBar(),
        ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      //bottomNavigationBar: BottomNav(),
      body: MainBody(),
    );
  }
}
