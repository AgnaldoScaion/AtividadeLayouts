import 'package:flutter/material.dart';

class Desafio5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeria em Grid'),
      ),
      body: GridView.count(
        crossAxisCount: 2, // Define duas colunas
        children: List.generate(6, (index) {
          return Center(
            child: Container(
              margin: EdgeInsets.all(8.0),
              color: Colors.primaries[index % Colors.primaries.length],
              child: Center(
                child: Text(
                  'Item ${index + 1}',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
