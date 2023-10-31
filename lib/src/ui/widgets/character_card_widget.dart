import 'package:flutter/material.dart';
import 'package:flutter_harry_potter/src/data/models/character.dart';

class CharacterCardWidget extends StatelessWidget {
  final Character character;

  const CharacterCardWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/character', arguments: character),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 30,
          child: ClipOval(
            child: Image.network(
              character.image!,
              width: 50,
              height: 50,
              errorBuilder: (context, error, stackTrace) {
                return const Image(image: AssetImage('assets/images/default_image.jpg'));
              },
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(character.name),
        subtitle: Text(character.house),
      ),
    );
  }
}
