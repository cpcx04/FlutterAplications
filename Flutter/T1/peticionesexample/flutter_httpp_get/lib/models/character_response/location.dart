import 'dart:convert';

import 'package:equatable/equatable.dart';

class Location extends Equatable {
  final String? name;
  final String? url;

  const Location({this.name, this.url});

  factory Location.fromMap(Map<String, dynamic> data) => Location(
        name: data['name'] as String?,
        url: data['url'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'url': url,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Location].
  factory Location.fromJson(String data) {
    return Location.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Location] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [name, url];
}
