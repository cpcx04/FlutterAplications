import 'dart:convert';

import 'known_for.dart';

class People {
  bool? adult;
  int? gender;
  int? id;
  String? knownForDepartment;
  String? name;
  String? originalName;
  double? popularity;
  String? profilePath;
  List<KnownFor>? knownFor;

  People({
    this.adult,
    this.gender,
    this.id,
    this.knownForDepartment,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
    this.knownFor,
  });

  factory People.fromMap(Map<String, dynamic> data) => People(
        adult: data['adult'] as bool?,
        gender: data['gender'] as int?,
        id: data['id'] as int?,
        knownForDepartment: data['known_for_department'] as String?,
        name: data['name'] as String?,
        originalName: data['original_name'] as String?,
        popularity: (data['popularity'] as num?)?.toDouble(),
        profilePath: data['profile_path'] as String?,
        knownFor: (data['known_for'] as List<dynamic>?)
            ?.map((e) => KnownFor.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'adult': adult,
        'gender': gender,
        'id': id,
        'known_for_department': knownForDepartment,
        'name': name,
        'original_name': originalName,
        'popularity': popularity,
        'profile_path': profilePath,
        'known_for': knownFor?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the Peopleing Json object as  People].
  factory People.fromJson(String data) {
    return People.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts  People] to a JSON string.
  String toJson() => json.encode(toMap());
}
