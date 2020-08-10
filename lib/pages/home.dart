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

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.blue,
        selectedItemColor: Colors.yellow,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text("Title")),
          BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text("Title")),
          BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text("Title")),
          BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text("Title")),
        ],
      ),
    );
  }
}
