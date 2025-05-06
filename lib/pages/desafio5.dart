import 'package:flutter/material.dart';

class Desafio5 extends StatelessWidget {
  const Desafio5({super.key});

  final List<String> imagens = const [
    'assets/imagens/paisagem1.jpg',
    'assets/imagens/paisagem2.jpg',
    'assets/imagens/retrato1.jpg',
    'assets/imagens/retrato2.jpg',
    'assets/imagens/cidade1.jpg',
    'assets/imagens/cidade2.jpg',
    'assets/imagens/natureza1.jpg',
    'assets/imagens/natureza2.jpg',
    'assets/imagens/arte1.jpg',
    'assets/imagens/arte2.jpg',
    'assets/imagens/animal1.jpg',
    'assets/imagens/animal2.jpg',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeria de Fotos'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.72, // Ajustado para evitar overflow
          ),
          itemCount: imagens.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 2,
              margin: EdgeInsets.zero, // Remove margem padrão do Card
              child: SizedBox(
                height: 185, // Altura aumentada para dar margem
                child: Column(
                  children: [
                    // Parte da imagem
                    Expanded(
                      flex: 4, // Aumentei o flex para dar mais espaço
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(imagens[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(Icons.photo, size: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    // Parte do texto - altura fixa com margem
                    Container(
                      constraints: const BoxConstraints(
                        minHeight: 40,
                        maxHeight: 45, // Limite máximo aumentado
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Foto ${index + 1}',
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.favorite_border, size: 14),
                              const SizedBox(width: 2), // Reduzido
                              const Text('15', style: TextStyle(fontSize: 10)),
                              const SizedBox(width: 6), // Reduzido
                              const Icon(Icons.star, size: 14, color: Colors.amber),
                              const SizedBox(width: 2), // Reduzido
                              Text(
                                '4.5',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}