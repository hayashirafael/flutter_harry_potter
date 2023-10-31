import 'package:dio/dio.dart';
import 'package:flutter_harry_potter/src/data/models/character.dart';
import 'package:flutter_harry_potter/src/interactors/services/hp_service.dart';

class HpService implements IHpService {
  final Dio _dio;
  final String url = 'https://hp-api.onrender.com/api/characters';

  HpService(this._dio);

  @override
  Future<List<Character>> getAllCharacters() async {
    try {
      final response = await _dio.get(url);
      var jsonToList = response.data as List;
      var list = jsonToList.map((e) => Character.fromMap(e)).toList();
      return list;
    } catch (e) {
      return [];
    }
  }
}
