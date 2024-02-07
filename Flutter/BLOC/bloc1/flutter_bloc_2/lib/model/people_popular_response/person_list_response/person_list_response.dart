import 'dart:convert';

import 'result.dart';

class PersonListResponse {
  int? page;
  List<People>? results;
  int? totalPages;
  int? totalResults;

  PersonListResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory PersonListResponse.fromMap(Map<String, dynamic> data) {
    return PersonListResponse(
      page: data['page'] as int?,
      results: (data['results'] as List<dynamic>?)
          ?.map((e) => People.fromMap(e as Map<String, dynamic>))
          .toList(),
      totalPages: data['total_pages'] as int?,
      totalResults: data['total_results'] as int?,
    );
  }

  Map<String, dynamic> toMap() => {
        'page': page,
        'results': results?.map((e) => e.toMap()).toList(),
        'total_pages': totalPages,
        'total_results': totalResults,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PersonListResponse].
  factory PersonListResponse.fromJson(String data) {
    return PersonListResponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PersonListResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
