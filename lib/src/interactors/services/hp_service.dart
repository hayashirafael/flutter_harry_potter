import 'package:flutter_harry_potter/src/data/models/character.dart';

abstract class IHpService {
  Future<List<Character>> getAllCharacters();
}
