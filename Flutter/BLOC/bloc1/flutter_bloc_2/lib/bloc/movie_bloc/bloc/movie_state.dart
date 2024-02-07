part of 'movie_bloc.dart';

@immutable
sealed class MovieState {}

final class MovieInitial extends MovieState {}

final class MovieFetchLoading extends MovieState {}

final class MovieFetchSucess extends MovieState {
  final List<Movie> movies;
  MovieFetchSucess(this.movies);
}

final class MovieFetchError extends MovieState {
  final String message;
  MovieFetchError(this.message);
}
