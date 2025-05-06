import 'package:flutter/material.dart';

class Desafio6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App de Música'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.purple,
            child: Center(
              child: Text(
                'Capa do Álbum',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Nome da Música',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            'Artista',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
              SizedBox(width: 20),
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              SizedBox(width: 20),
              Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
