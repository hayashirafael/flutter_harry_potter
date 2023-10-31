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
      body: Container(),
    );
  }
}
