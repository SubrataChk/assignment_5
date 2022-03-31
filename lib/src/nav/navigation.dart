import 'package:assignment_5/src/auth/login.dart';
import 'package:assignment_5/src/routes/routes.dart';
import 'package:flutter/material.dart';

class NaviGationSection extends StatefulWidget {
  const NaviGationSection({Key? key}) : super(key: key);

  @override
  State<NaviGationSection> createState() => _NaviGationSectionState();
}

class _NaviGationSectionState extends State<NaviGationSection> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    LoginPage(),
    LoginPage(),
    LoginPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storage),
            label: 'Localization',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.animation),
            label: 'Animations',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
