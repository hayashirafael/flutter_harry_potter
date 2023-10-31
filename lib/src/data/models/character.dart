// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_harry_potter/src/data/models/wand.dart';

class Character {
  final String id;
  final String name;
  final List<String?> alternate_names;
  final String species;
  final String gender;
  final String house;
  final String? dateOfBirth;
  final int? yearOfBirth;
  final bool wizard;
  final String ancestry;
  final String eyeColour;
  final String hairColour;
  final Wand wand;
  final String patronus;
  final bool hogwartsStudent;
  final bool hogwartsStaff;
  final String actor;
  final List<String?> alternate_actors;
  final bool alive;
  final String? image;
  Character({
    required this.id,
    required this.name,
    required this.alternate_names,
    required this.species,
    required this.gender,
    required this.house,
    this.dateOfBirth,
    this.yearOfBirth,
    required this.wizard,
    required this.ancestry,
    required this.eyeColour,
    required this.hairColour,
    required this.wand,
    required this.patronus,
    required this.hogwartsStudent,
    required this.hogwartsStaff,
    required this.actor,
    required this.alternate_actors,
    required this.alive,
    this.image,
  });

  Character copyWith({
    String? id,
    String? name,
    List<String?>? alternate_names,
    String? species,
    String? gender,
    String? house,
    ValueGetter<String?>? dateOfBirth,
    ValueGetter<int?>? yearOfBirth,
    bool? wizard,
    String? ancestry,
    String? eyeColour,
    String? hairColour,
    Wand? wand,
    String? patronus,
    bool? hogwartsStudent,
    bool? hogwartsStaff,
    String? actor,
    List<String?>? alternate_actors,
    bool? alive,
    ValueGetter<String?>? image,
  }) {
    return Character(
      id: id ?? this.id,
      name: name ?? this.name,
      alternate_names: alternate_names ?? this.alternate_names,
      species: species ?? this.species,
      gender: gender ?? this.gender,
      house: house ?? this.house,
      dateOfBirth: dateOfBirth != null ? dateOfBirth() : this.dateOfBirth,
      yearOfBirth: yearOfBirth != null ? yearOfBirth() : this.yearOfBirth,
      wizard: wizard ?? this.wizard,
      ancestry: ancestry ?? this.ancestry,
      eyeColour: eyeColour ?? this.eyeColour,
      hairColour: hairColour ?? this.hairColour,
      wand: wand ?? this.wand,
      patronus: patronus ?? this.patronus,
      hogwartsStudent: hogwartsStudent ?? this.hogwartsStudent,
      hogwartsStaff: hogwartsStaff ?? this.hogwartsStaff,
      actor: actor ?? this.actor,
      alternate_actors: alternate_actors ?? this.alternate_actors,
      alive: alive ?? this.alive,
      image: image != null ? image() : this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'alternate_names': alternate_names,
      'species': species,
      'gender': gender,
      'house': house,
      'dateOfBirth': dateOfBirth,
      'yearOfBirth': yearOfBirth,
      'wizard': wizard,
      'ancestry': ancestry,
      'eyeColour': eyeColour,
      'hairColour': hairColour,
      'wand': wand.toMap(),
      'patronus': patronus,
      'hogwartsStudent': hogwartsStudent,
      'hogwartsStaff': hogwartsStaff,
      'actor': actor,
      'alternate_actors': alternate_actors,
      'alive': alive,
      'image': image,
    };
  }

  factory Character.fromMap(Map<String, dynamic> map) {
    return Character(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      alternate_names: List<String?>.from(map['alternate_names']),
      species: map['species'] ?? '',
      gender: map['gender'] ?? '',
      house: map['house'] ?? '',
      dateOfBirth: map['dateOfBirth'],
      yearOfBirth: map['yearOfBirth']?.toInt(),
      wizard: map['wizard'] ?? false,
      ancestry: map['ancestry'] ?? '',
      eyeColour: map['eyeColour'] ?? '',
      hairColour: map['hairColour'] ?? '',
      wand: Wand.fromMap(map['wand']),
      patronus: map['patronus'] ?? '',
      hogwartsStudent: map['hogwartsStudent'] ?? false,
      hogwartsStaff: map['hogwartsStaff'] ?? false,
      actor: map['actor'] ?? '',
      alternate_actors: List<String?>.from(map['alternate_actors']),
      alive: map['alive'] ?? false,
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Character.fromJson(String source) => Character.fromMap(json.decode(source));
}
