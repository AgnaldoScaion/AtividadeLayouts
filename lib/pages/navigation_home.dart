import 'package:flutter/material.dart';
import 'desafio1.dart';
import 'desafio2.dart';
import 'desafio3.dart';
import 'desafio4.dart';
import 'desafio5.dart';
import 'desafio6.dart';
import 'desafio7.dart';
import 'desafio8.dart';

class NavigationHome extends StatefulWidget {
  @override
  _NavigationHomeState createState() => _NavigationHomeState();
}

class _NavigationHomeState extends State<NavigationHome> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    Desafio1(),
    Desafio2(),
    Desafio3(),
    Desafio4(),
    Desafio5(),
    Desafio6(),
    Desafio7(),
    Desafio8(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desafios Flutter'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Desafio 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Desafio 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Desafio 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers),
            label: 'Desafio 4',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_on),
            label: 'Desafio 5',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Desafio 6',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Desafio 7',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Desafio 8',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
