// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Wand {
  final String? wood;
  final String? core;
  final num? length;
  Wand({
    this.wood,
    this.core,
    this.length,
  });

  Map<String, dynamic> toMap() {
    return {
      'wood': wood,
      'core': core,
      'length': length,
    };
  }

  factory Wand.fromMap(Map<String, dynamic> map) {
    return Wand(
      wood: map['wood'],
      core: map['core'],
      length: map['length'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Wand.fromJson(String source) => Wand.fromMap(json.decode(source));
}
