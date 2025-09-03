
import 'package:flutter/material.dart';
import 'package:myapp/ministry_card.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ministryCards = [
      {
        'title': 'WHC',
        'imageUrl': 'https://picsum.photos/seed/whc/400/200',
      },
      {
        'title': 'Ministry',
        'imageUrl': 'https://picsum.photos/seed/ministry/400/200',
      },
      {
        'title': 'WHI',
        'imageUrl': 'https://picsum.photos/seed/whi/400/200',
      },
      {
        'title': 'World Mission',
        'imageUrl': 'https://picsum.photos/seed/mission/400/200',
      },
      {
        'title': 'GHP',
        'imageUrl': 'https://picsum.photos/seed/ghp/400/200',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('WHC App'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
            ],
          ),
        ),
        child: ListView.builder(
          itemCount: ministryCards.length,
          padding: const EdgeInsets.only(top: 100, left: 16, right: 16, bottom: 16),
          itemBuilder: (context, index) {
            final card = ministryCards[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                height: 150,
                child: MinistryCard(
                  title: card['title']!,
                  imageUrl: card['imageUrl'] as String?,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
