import "package:flutter/material.dart";
import "data/data.dart";
import "package:http/http.dart" as http;
import "dart:convert";

Future<List<Data>> fetchData() async {
  var url = "https://data.askbhunte.com/api/v1/covid/timeline";
  var response = await http.get(Uri.parse(url));
  List<Data> actualData = [];
  if (response.statusCode == 200) {
      var data = json.decode(response.body);
      for (var eachData in data) {
        actualData.add(Data.fromJson(eachData));
      }
  }
  return actualData;
}

class MainCard extends StatefulWidget {
  const MainCard({ Key? key }) : super(key: key);

  @override
  _MainCardState createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  List<Data> _data = [];
  @override
  void initState() {
    fetchData().then((value) {
      setState(() {
        _data.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      color: Colors.white,
      shadowColor: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ExpansionTile(
        initiallyExpanded: false,
        title: Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text("Total: "+_data[_data.length-1].totalCases.toString()),

              SizedBox(height: 10),
              Text("Active: "+(_data[_data.length-1].totalCases-_data[_data.length-1].totalRecoveries).toString()),

              SizedBox(height: 10),
              Text("Recovered: "+ _data[_data.length-1].totalRecoveries.toString()),

              SizedBox(height: 10),
              Text("Deaths: "+_data[_data.length-1].totalDeaths.toString()),

              SizedBox(height: 10),
            ],
          ),

          SizedBox(width: 20.0),

          Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.green, Colors.lightBlue]),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "+" +_data[_data.length - 1].newRecoveries.toString() +" Recovered",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),
            
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.orange, Colors.deepOrange]
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  "+" + _data[_data.length - 1].newCases.toString() + " Cases",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.red, Colors.purple]),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  "+" +_data[_data.length - 1].newDeaths.toString() +" Deaths",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ]),          
        ],),
        children: <Widget> [
          Text("Last Updated on: "+_data[_data.length - 1].date)
        ],
      ),
    );
  }
}