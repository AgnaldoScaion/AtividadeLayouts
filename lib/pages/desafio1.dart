import 'package:flutter/material.dart';

class Desafio1 extends StatelessWidget {
  const Desafio1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartão de Visita'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Icon(
                Icons.person,
                size: 60,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Juninho Pereira',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'Pedreiro / Programador Flutter',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                Chip(
                  label: const Text('Flutter'),
                  backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                ),
                Chip(
                  label: const Text('Dart'),
                  backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                ),
                Chip(
                  label: const Text('Pedreiro'),
                  backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.email),
                  onPressed: () {},
                  color: Theme.of(context).colorScheme.primary,
                ),
                IconButton(
                  icon: const Icon(Icons.phone),
                  onPressed: () {},
                  color: Theme.of(context).colorScheme.primary,
                ),
                IconButton(
                  icon: const Icon(Icons.link),
                  onPressed: () {},
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}