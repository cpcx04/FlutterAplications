// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:films_application_1/models/film.dart';

class FilmResponse extends Equatable {
  int page;
  List<Film> results;
  int totalPages;
  int totalResults;

  FilmResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory FilmResponse.fromJson(Map<String, dynamic> json) {
    return FilmResponse(
      page: json['page'],
      results: List<Film>.from(json['results'].map((x) => Film.fromJson(x))),
      totalPages: json['total_pages'],
      totalResults: json['total_results'],
    );
  }

  @override
  List<Object?> get props => [page, results, totalPages, totalResults];
}
