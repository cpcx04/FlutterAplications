import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_2/model/movie_popular_response/movie_popular_response/result.dart';
import 'package:flutter_bloc_2/repository/movies/movie_repository.dart';
import 'package:meta/meta.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final MovieRepository _movieRepository;

  MovieBloc(this._movieRepository) : super(MovieInitial()) {
    on<MovieFetchPopular>(_onMovieFetchList);
  }

  void _onMovieFetchList(
      MovieFetchPopular event, Emitter<MovieState> emit) async {
    try {
      final movieList = await _movieRepository.fetchMovies(event.type);
      emit(MovieFetchSucess(movieList));
    } catch (e) {
      emit(MovieFetchError(e.toString()));
    }
  }
}
