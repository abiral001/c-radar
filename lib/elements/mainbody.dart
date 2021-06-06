import "package:flutter/material.dart";
import "card.dart" as card;

class MainBody extends StatefulWidget {
  const MainBody({ Key? key }) : super(key: key);

  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        SizedBox(height: 20.0),
        Row(
          children: <Widget>[
            SizedBox(width: 40.0),
            Text("Nepal"),
          ],
        ),

        SizedBox(height: 20.0),
        card.MainCard(),
      ], 
    );
  }
}