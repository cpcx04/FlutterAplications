import 'dart:convert';

import 'result.dart';

class MoviePopularResponse {
  int? page;
  List<Movie>? results;
  int? totalPages;
  int? totalResults;

  MoviePopularResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory MoviePopularResponse.fromMap(Map<String, dynamic> data) {
    return MoviePopularResponse(
      page: data['page'] as int?,
      results: (data['results'] as List<dynamic>?)
          ?.map((e) => Movie.fromMap(e as Map<String, dynamic>))
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
  /// Parses the string and returns the resulting Json object as [MoviePopularResponse].
  factory MoviePopularResponse.fromJson(String data) {
    return MoviePopularResponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [MoviePopularResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
