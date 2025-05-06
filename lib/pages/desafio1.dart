import 'package:flutter/material.dart';

class Desafio1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartão de Visita'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              'Juninho Pereira',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Pedreiro / Nas Horas Vagas Programador de flutter',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
