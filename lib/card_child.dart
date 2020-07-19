import "package:flutter/material.dart";
import "package:http/http.dart" as http;

class CardChild extends StatelessWidget {
  const CardChild({
    Key key,
  }) : super(key: key);

  String get fetchData => fetchData;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(child: Text("fetchData[0][0]")));
  }
}
