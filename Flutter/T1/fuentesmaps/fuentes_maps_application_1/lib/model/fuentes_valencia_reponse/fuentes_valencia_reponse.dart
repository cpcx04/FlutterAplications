import 'dart:convert';

import 'result.dart';

class FuentesValenciaReponse {
  int? totalCount;
  List<Result>? results;

  FuentesValenciaReponse({this.totalCount, this.results});

  factory FuentesValenciaReponse.fromMap(Map<String, dynamic> data) {
    return FuentesValenciaReponse(
      totalCount: data['total_count'] as int?,
      results: (data['results'] as List<dynamic>?)
          ?.map((e) => Result.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'total_count': totalCount,
        'results': results?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [FuentesValenciaReponse].
  factory FuentesValenciaReponse.fromJson(String data) {
    return FuentesValenciaReponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [FuentesValenciaReponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
