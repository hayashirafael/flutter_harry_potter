import 'package:dio/dio.dart';
import 'package:flutter_harry_potter/src/data/models/character.dart';
import 'package:flutter_harry_potter/src/interactors/services/hp_service.dart';

class HpService implements IHpService {
  final _dio = Dio();

  @override
  Future<List<Character>> getAllCharacters() async {
    try {
      const url = 'https://hp-api.onrender.com/api/characters';
      final response = await _dio.get(url);
      var jsonToList = response.data as List;
      var list = jsonToList.map((e) => Character.fromMap(e)).toList();
      list.sort((a, b) => a.name.compareTo(b.name));
      return list;
    } catch (e) {
      return [];
    }
  }
}
