import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'result.dart';

class FilmResponse extends Equatable {
  final int? page;
  final List<Result>? results;
  final int? totalPages;
  final int? totalResults;

  const FilmResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory FilmResponse.fromMap(Map<String, dynamic> data) => FilmResponse(
        page: data['page'] as int?,
        results: (data['results'] as List<dynamic>?)
            ?.map((e) => Result.fromMap(e as Map<String, dynamic>))
            .toList(),
        totalPages: data['total_pages'] as int?,
        totalResults: data['total_results'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'page': page,
        'results': results?.map((e) => e.toMap()).toList(),
        'total_pages': totalPages,
        'total_results': totalResults,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [FilmResponse].
  factory FilmResponse.fromJson(String data) {
    return FilmResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [FilmResponse] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [page, results, totalPages, totalResults];
}
