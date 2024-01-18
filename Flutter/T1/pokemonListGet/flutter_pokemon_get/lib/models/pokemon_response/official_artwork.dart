import 'dart:convert';

import 'package:equatable/equatable.dart';

class OfficialArtwork extends Equatable {
  final String? frontDefault;
  final String? frontShiny;

  const OfficialArtwork({this.frontDefault, this.frontShiny});

  factory OfficialArtwork.fromMap(Map<String, dynamic> data) {
    return OfficialArtwork(
      frontDefault: data['front_default'] as String?,
      frontShiny: data['front_shiny'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'front_default': frontDefault,
        'front_shiny': frontShiny,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [OfficialArtwork].
  factory OfficialArtwork.fromJson(String data) {
    return OfficialArtwork.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [OfficialArtwork] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [frontDefault, frontShiny];
}
