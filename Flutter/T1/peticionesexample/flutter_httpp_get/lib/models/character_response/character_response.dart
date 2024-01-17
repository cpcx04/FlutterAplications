import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'location.dart';
import 'origin.dart';

class CharacterResponse extends Equatable {
  final int? id;
  final String? name;
  final String? status;
  final String? species;
  final String? type;
  final String? gender;
  final Origin? origin;
  final Location? location;
  final String? image;
  final List<String>? episode;
  final String? url;
  final DateTime? created;

  const CharacterResponse({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  });

  factory CharacterResponse.fromMap(Map<String, dynamic> data) {
    // Utiliza el operador de cascada para asignar valores nulos
    return CharacterResponse(
      id: data['id'] as int?,
      name: data['name'] as String?,
      status: data['status'] as String?,
      species: data['species'] as String?,
      type: data['type'] as String?,
      gender: data['gender'] as String?,
      origin: data['origin'] == null
          ? null
          : Origin.fromMap(data['origin'] as Map<String, dynamic>),
      location: data['location'] == null
          ? null
          : Location.fromMap(data['location'] as Map<String, dynamic>),
      image: data['image'] as String?,
      episode: data['episode']
          ?.cast<String>(), // Asegúrate de que episode sea una lista de Strings
      url: data['url'] as String?,
      created: data['created'] == null
          ? null
          : DateTime.parse(data['created'] as String),
    );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'status': status,
        'species': species,
        'type': type,
        'gender': gender,
        'origin': origin?.toMap(),
        'location': location?.toMap(),
        'image': image,
        'episode': episode,
        'url': url,
        'created': created?.toIso8601String(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CharacterResponse].
  factory CharacterResponse.fromJson(String data) {
    try {
      return CharacterResponse.fromMap(
          json.decode(data) as Map<String, dynamic>);
    } catch (e) {
      // Manejo de errores para la conversión del JSON
      print('Error parsing JSON: $e');
      rethrow; // Re-lanza la excepción para que el cliente pueda manejarla según sea necesario
    }
  }

  /// `dart:convert`
  ///
  /// Converts [CharacterResponse] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props {
    return [
      id,
      name,
      status,
      species,
      type,
      gender,
      origin,
      location,
      image,
      episode,
      url,
      created,
    ];
  }
}
