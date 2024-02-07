import 'package:flutter_bloc_2/model/movie_popular_response/movie_popular_response/result.dart';

abstract class MovieRepository {
  Future<List<Movie>> fetchMovies(String type);
  Future<Movie> fetchDetails(int movieId);
}
