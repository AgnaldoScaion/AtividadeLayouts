import 'package:flutter/material.dart';

class Desafio7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Loja Online'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Banner Promocional',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 100,
                height: 50,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Categoria 1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 50,
                color: Colors.orange,
                child: Center(
                  child: Text(
                    'Categoria 2',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 50,
                color: Colors.purple,
                child: Center(
                  child: Text(
                    'Categoria 3',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(6, (index) {
              return Container(
                margin: EdgeInsets.all(8.0),
                color: Colors.primaries[index % Colors.primaries.length],
                child: Center(
                  child: Text(
                    'Produto ${index + 1}',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
