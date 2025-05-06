import 'package:flutter/material.dart';

class Desafio3 extends StatelessWidget {
  const Desafio3({super.key});

  // Lista de posts com imagens correspondentes
  final List<Map<String, String>> posts = const [
    {
      'title': 'Novidades no Flutter 3.0',
      'description': 'Conheça as principais novidades da última versão do framework Flutter...',
      'image': 'assets/posts/flutter_news.jpg',
      'author': 'Equipe Flutter'
    },
    {
      'title': 'Dicas de UI/UX para Iniciantes',
      'description': 'Aprenda as melhores práticas para criar interfaces incríveis...',
      'image': 'assets/posts/ui_tips.jpg',
      'author': 'Design Master'
    },
    {
      'title': 'Como melhorar seu código Dart',
      'description': 'Veja como escrever código mais limpo e eficiente em Dart...',
      'image': 'assets/posts/dart_code.jpg',
      'author': 'Dart Expert'
    },
    {
      'title': 'Eventos de Tecnologia em 2025',
      'description': 'Confira os principais eventos de tecnologia que acontecerão este ano...',
      'image': 'assets/posts/tech_events.gif',
      'author': 'Tech Insider'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed de Notícias'),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: posts.length,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final post = posts[index];
          
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                        child: Icon(
                          Icons.person,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post['author']!,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            '${index + 1}h atrás',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    post['title']!,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      height: 180,
                      width: double.infinity,
                      child: Image.asset(
                        post['image']!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[200],
                            child: const Center(
                              child: Icon(Icons.broken_image, size: 50, color: Colors.grey),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    post['description']!,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.thumb_up_outlined),
                            onPressed: () {},
                            iconSize: 20,
                          ),
                          IconButton(
                            icon: const Icon(Icons.comment_outlined),
                            onPressed: () {},
                            iconSize: 20,
                          ),
                          IconButton(
                            icon: const Icon(Icons.share),
                            onPressed: () {},
                            iconSize: 20,
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Ler mais'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}