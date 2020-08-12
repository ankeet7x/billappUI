import 'package:flutter/material.dart';

class Homee extends StatefulWidget {
  @override
  _HomeeState createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                appBar(),
                gap(),
                Text("March Budget"),
                Text(
                  "3500",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
                Text("Remaining Funds"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

appBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.settings),
        onPressed: () {},
      )
    ],
  );
}

gap() {
  return SizedBox(
    height: 10,
  );
}
