// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter_harry_potter/src/data/models/wand.dart';

class Character {
  final String id;
  final String name;
  final List<dynamic> alternate_names;
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
  final List<dynamic> alternate_actors;
  final bool alive;
  final String image;
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
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      id: map['id'] as String,
      name: map['name'] as String,
      alternate_names: List<dynamic>.from((map['alternate_names'] as List<dynamic>)),
      species: map['species'] as String,
      gender: map['gender'] as String,
      house: map['house'] as String,
      dateOfBirth: map['dateOfBirth'] != null ? map['dateOfBirth'] as String : null,
      yearOfBirth: map['yearOfBirth'] != null ? map['yearOfBirth'] as int : null,
      wizard: map['wizard'] as bool,
      ancestry: map['ancestry'] as String,
      eyeColour: map['eyeColour'] as String,
      hairColour: map['hairColour'] as String,
      wand: Wand.fromMap(map['wand'] as Map<String, dynamic>),
      patronus: map['patronus'] as String,
      hogwartsStudent: map['hogwartsStudent'] as bool,
      hogwartsStaff: map['hogwartsStaff'] as bool,
      actor: map['actor'] as String,
      alternate_actors: List<dynamic>.from((map['alternate_actors'] as List<dynamic>)),
      alive: map['alive'] as bool,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Character.fromJson(String source) => Character.fromMap(json.decode(source) as Map<String, dynamic>);
}
