import 'package:flutter/material.dart';
import 'package:travel_app/constant.dart';
import 'package:travel_app/screens/nav_screen/explorer.dart';
import 'package:travel_app/screens/nav_screen/home.dart';
import 'package:travel_app/screens/nav_screen/settings.dart';
import 'package:travel_app/screens/nav_screen/trip_plan.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int _selectedIndex = 0;

  List<Widget> pages = [
    Home(),
    TripPlan(),
    ExplorerPage(),
    SettingPage(),
  ];

  void onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.grey,), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today, color: Colors.grey,), label: "plan"),
          BottomNavigationBarItem(icon: Icon(Icons.explore, color: Colors.grey,), label: "explorer"),
          BottomNavigationBarItem(icon: Icon(Icons.settings, color: Colors.grey,), label: "settings"),
        ],
        onTap: onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: kButtonColor,
        selectedIconTheme: IconThemeData(
          color: Colors.teal
        ),
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w700
        ),
      ),
    );
  }
}
