import 'package:flutter/material.dart';

class Desafio2 extends StatelessWidget {
  const Desafio2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Linha de Produtos'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(width: 20),
              _buildProductItem(context, Icons.phone_android, 'Smartphone', '\$799'),
              _buildProductItem(context, Icons.laptop, 'Notebook', '\$1299'),
              _buildProductItem(context, Icons.headset, 'Fones', '\$199'),
              _buildProductItem(context, Icons.watch, 'Smartwatch', '\$299'),
              _buildProductItem(context, Icons.tablet, 'Tablet', '\$499'),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductItem(BuildContext context, IconData icon, String name, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox(
          width: 220,  // Largura aumentada
          height: 280, // Altura aumentada
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Ícone no topo esquerdo
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(
                    icon,
                    size: 36,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const Spacer(),
                // Conteúdo alinhado à esquerda (mas com espaço abaixo do ícone)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      price,
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.amber[700],
                            fontSize: 22,
                          ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.primary,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: const Text(
                          'COMPRAR',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}