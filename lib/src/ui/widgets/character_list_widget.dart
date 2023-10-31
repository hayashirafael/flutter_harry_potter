import 'package:flutter/material.dart';
import 'package:flutter_harry_potter/src/data/models/character.dart';
import 'package:flutter_harry_potter/src/ui/widgets/character_card_widget.dart';

class CharacterListWidget extends StatelessWidget {
  final List<Character> characters;

  const CharacterListWidget({super.key, required this.characters});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characters.length,
      itemBuilder: (context, index) {
        final character = characters[index];
        return CharacterCardWidget(character: character);
      },
    );
  }
}
