import 'package:flutter/material.dart';
import 'package:organicfood/detail_page.dart';
import 'package:organicfood/home_screen.dart';
import 'package:organicfood/scaffold_demo.dart';
import 'package:organicfood/welcome_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int pageSelected = 0;
  List<Widget> screens = [
    HomeScreen(),
    WelcomeScreen(),
    DetailPage(),
    ScaffoldDemo(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[pageSelected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageSelected,
        onTap: (value) {
          setState(
            () {
              pageSelected = value;
            },
          );
        },
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
