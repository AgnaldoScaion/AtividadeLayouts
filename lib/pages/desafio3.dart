import 'package:flutter/material.dart';

class Desafio3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed Simples'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Título do Post 1',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.red,
              ),
              SizedBox(height: 10),
              Text('Descrição do post 1. Esta é uma descrição mais detalhada.'),
              SizedBox(height: 20),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Título do Post 2',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.green,
              ),
              SizedBox(height: 10),
              Text('Descrição do post 2. Esta é uma descrição mais detalhada.'),
              SizedBox(height: 20),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Título do Post 3',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.blue,
              ),
              SizedBox(height: 10),
              Text('Descrição do post 3. Esta é uma descrição mais detalhada.'),
              SizedBox(height: 20),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Título do Post 4',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.yellow,
              ),
              SizedBox(height: 10),
              Text('Descrição do post 4. Esta é uma descrição mais detalhada.'),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
