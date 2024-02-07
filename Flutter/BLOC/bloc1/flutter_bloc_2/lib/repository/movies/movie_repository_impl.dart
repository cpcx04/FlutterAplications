import 'dart:convert';

import 'package:flutter_bloc_2/model/movie_popular_response/movie_popular_response/movie_popular_response.dart';
import 'package:flutter_bloc_2/model/movie_popular_response/movie_popular_response/result.dart';
import 'package:flutter_bloc_2/repository/movies/movie_repository.dart';
import 'package:http/http.dart';

class MovieRepositoryImpl extends MovieRepository {
  Client _httpClient = Client();

  @override
  Future<Movie> fetchDetails(int movieId) async {
    final response = await this._httpClient.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/$movieId?api_key=e3d23f2096498dbb777cd454a348e001'));

    if (response.statusCode == 200) {
      return Movie.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load movies');
    }
  }

  @override
  Future<List<Movie>> fetchMovies(String type) async {
    final response = await this._httpClient.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/$type?api_key=e3d23f2096498dbb777cd454a348e001'));

    if (response.statusCode == 200) {
      return MoviePopularResponse.fromJson(jsonDecode(response.body)).results!;
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
