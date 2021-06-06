import "package:flutter/material.dart";
import "card.dart" as card;

class TitleBar extends StatefulWidget {
  const TitleBar({ Key? key }) : super(key: key);

  @override
  _TitleBarState createState() => _TitleBarState();
}

class _TitleBarState extends State<TitleBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {
          card.fetchData();          
        },
        child: Icon(
          Icons.refresh,
          size: 26.0,
          color: Colors.black,
        ),
      ),      
    );
  }
}