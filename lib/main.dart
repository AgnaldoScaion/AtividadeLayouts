import 'package:flutter/material.dart';
import 'pages/navigation_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desafios Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavigationHome(),
    );
  }
}
