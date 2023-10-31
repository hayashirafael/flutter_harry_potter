import 'package:flutter/material.dart';
import 'package:flutter_harry_potter/src/data/models/character.dart';

class CharacterPage extends StatelessWidget {
  final Character character;

  const CharacterPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                character.name,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image.network(
              character.image!,
              width: 300,
              height: 350,
              errorBuilder: (context, error, stackTrace) {
                return const Image(image: AssetImage('assets/images/default_image.jpg'));
              },
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 8),
            Text(
              'Actor: ${character.actor}',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Birth Date: ${character.dateOfBirth}',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Hair Color: ${character.hairColour}',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Eye Color: ${character.eyeColour}',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'House: ${character.house}',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
