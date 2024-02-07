import 'package:flutter/material.dart';
import 'package:flutter_bloc_2/bloc/movie_bloc/bloc/movie_bloc.dart';
import 'package:flutter_bloc_2/repository/movies/movie_repository.dart';
import 'package:flutter_bloc_2/repository/movies/movie_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  late MovieRepository movieRepository;

  @override
  void initState() {
    super.initState();
    movieRepository = MovieRepositoryImpl();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            MovieBloc(movieRepository)..add(MovieFetchPopular('popular')),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Movies'),
          ),
          body: _movieList(),
        ));
  }

  Widget _movieList() {
    return BlocBuilder<MovieBloc, MovieState>(builder: (context, state) {
      if (state is MovieFetchSucess) {
        return ListView.builder(
          itemCount: state.movies.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(state.movies[index].title!),
              subtitle: Text(state.movies[index].releaseDate!.toString()),
              onTap: () {
                Navigator.pushNamed(context, '/movie_detail',
                    arguments: state.movies[index]);
              },
            );
          },
        );
      } else if (state is MovieFetchError) {
        return Text(state.message);
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
