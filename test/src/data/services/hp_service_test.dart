import 'package:flutter_harry_potter/src/data/models/character.dart';
import 'package:flutter_harry_potter/src/data/services/hp_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final service = HpService();
  test('getAllCharacters', () async {
    final List<Character> list = await service.getAllCharacters();
    expect(list, isNotEmpty);
  });
}
