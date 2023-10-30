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
    return <String, dynamic>{
      'wood': wood,
      'core': core,
      'length': length,
    };
  }

  factory Wand.fromMap(Map<String, dynamic> map) {
    return Wand(
      wood: map['wood'] != null ? map['wood'] as String : null,
      core: map['core'] != null ? map['core'] as String : null,
      length: map['length'] != null ? map['length'] as num : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Wand.fromJson(String source) => Wand.fromMap(json.decode(source) as Map<String, dynamic>);
}
