import 'package:flutter/material.dart';

class Desafio2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Linha de Produtos'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                ),
                SizedBox(height: 10),
                Text('Produto 1'),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                ),
                SizedBox(height: 10),
                Text('Produto 2'),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ),
                SizedBox(height: 10),
                Text('Produto 3'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
