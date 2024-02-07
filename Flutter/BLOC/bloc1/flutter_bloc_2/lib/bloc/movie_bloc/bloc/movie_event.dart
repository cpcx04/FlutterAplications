part of 'movie_bloc.dart';

@immutable
sealed class MovieEvent {}

class MovieFetchPopular extends MovieEvent {
  final String type;
  MovieFetchPopular(this.type);
}

class MovieViewDetail extends MovieEvent {
  final int id;
  MovieViewDetail(this.id);
}
