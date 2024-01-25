import 'package:films_application_1/models/movie_video_response/movie_video_response.dart';
import 'package:films_application_1/widgets/details_film.dart';
import 'package:films_application_1/widgets/video_list.dart';
import 'package:flutter/material.dart';
import 'package:films_application_1/models/film_detail_reponse/film_detail_reponse.dart';
import 'package:http/http.dart' as http;

class DetallePelicula extends StatefulWidget {
  const DetallePelicula({Key? key, required this.movieId}) : super(key: key);

  final int movieId;

  @override
  State<DetallePelicula> createState() => _DetallePeliculaState();
}

Future<FilmDetailReponse> fetchAlbum(int movieId) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/$movieId?api_key=e3d23f2096498dbb777cd454a348e001'));
  if (response.statusCode == 200) {
    return FilmDetailReponse.fromJson(response.body);
  } else {
    throw Exception('No list found');
  }
}

Future<MovieVideoResponse> fetchVideo(int movieId) async {
  final response2 = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/$movieId/videos?api_key=e3d23f2096498dbb777cd454a348e001'));

  if (response2.statusCode == 200) {
    return MovieVideoResponse.fromJson(response2.body);
  } else {
    throw Exception('No list found');
  }
}

class _DetallePeliculaState extends State<DetallePelicula> {
  late Future<FilmDetailReponse> futureAlbum;
  late Future<MovieVideoResponse> futureVideo;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum(widget.movieId);
    futureVideo = fetchVideo(widget.movieId);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder<FilmDetailReponse>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              final FilmDetailReponse filmDetails = snapshot.data!;

              return DetailsWidget(
                imageUrl: filmDetails.posterPath!,
                descripcion: filmDetails.overview!,
              );
            }
          },
        ),
        FutureBuilder<MovieVideoResponse>(
          future: futureVideo,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else if (snapshot.data != null) {
              final MovieVideoResponse videoResponse = snapshot.data!;

              final videoDetails = videoResponse.results![0];

              return VideoList();
            } else {
              return const Center(
                child: Text('No data found'),
              );
            }
          },
        )
      ],
    );
  }
}
