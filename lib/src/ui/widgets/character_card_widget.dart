import 'package:flutter/material.dart';
import 'package:flutter_harry_potter/src/data/models/character.dart';

class CharacterCardWidget extends StatelessWidget {
  final Character character;

  const CharacterCardWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: character.image != null ? Image.network(character.image!) : const SizedBox.shrink(),
        title: Text(character.name), // Exibir o nome do personagem
        subtitle: Text(character.house), // Exibir a ocupação do personagem
      ),
    );
  }
}
