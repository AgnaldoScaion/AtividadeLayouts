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
  const NavigationHome({super.key});

  @override
  State<NavigationHome> createState() => _NavigationHomeState();
}

class _NavigationHomeState extends State<NavigationHome> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Desafio1(),
    const Desafio2(),
    const Desafio3(),
    const Desafio4(),
    const Desafio5(),
    const Desafio6(),
    const Desafio7(),
    const Desafio8(),
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
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Cartão',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Produtos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers),
            label: 'Stack',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Galeria',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Música',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Loja',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: const Color.fromARGB(255, 173, 173, 173),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        onTap: _onItemTapped,
      ),
    );
  }
}