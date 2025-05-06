import 'package:flutter/material.dart';

class Desafio8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil de Usuário'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue,
              child: Text(
                'AV',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Senha',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Use backgroundColor
                  ),
                  child: Text('Voltar'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary, // Use backgroundColor
                  ),
                  child: Text('Confirmar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
