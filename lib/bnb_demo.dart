import 'package:flutter/material.dart';
import 'package:organicfood/detail_page.dart';
import 'package:organicfood/home_screen.dart';
import 'package:organicfood/scaffold_demo.dart';
import 'package:organicfood/welcome_screen.dart';

class BDBDemo extends StatefulWidget {
  const BDBDemo({Key? key}) : super(key: key);

  @override
  State<BDBDemo> createState() => _BDBDemoState();
}

class _BDBDemoState extends State<BDBDemo> {
  List<Widget> screen = [
    DetailPage(),
    HomeScreen(),
    WelcomeScreen(),
    ScaffoldDemo()
  ];
  int pageselected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[pageselected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageselected,
        onTap: (value) {
          setState(
            () {
              pageselected = value;
            },
          );
        },
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
