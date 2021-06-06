import 'package:cradarupdated/elements/mainbody.dart';
import 'package:cradarupdated/elements/titleBar.dart';
import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text(
          "C-RADAR",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: <Widget> [
          TitleBar(),
        ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: MainBody(),
    );
  }
}