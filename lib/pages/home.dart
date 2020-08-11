import 'package:flutter/material.dart';

import 'favpage.dart';
import 'homepage.dart';
import 'person.dart';
import 'search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _children = [Homee(), Fav(), Search(), Person()];
  int _currentIndex = 0;

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.yellow,
        selectedItemColor: Colors.blue,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), title: Text("Title")),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), title: Text("Title")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text("Title")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), title: Text("Title")),
        ],
      ),
    );
  }
}
