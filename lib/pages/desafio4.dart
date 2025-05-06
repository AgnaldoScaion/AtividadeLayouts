import 'package:flutter/material.dart';

class Desafio4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout com Stack'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.blue,
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Text(
              'Texto no Canto',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Center(
            child: Text(
              'Texto Centralizado',
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
