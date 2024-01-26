import 'package:films_application_1/models/movie_video_response/movie_video_response.dart';
import 'package:films_application_1/widgets/videos/video_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class VideoList extends StatefulWidget {
  const VideoList({super.key, required this.movieId});

  final int movieId;
  @override
  State<VideoList> createState() => _VideoListState();
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

class _VideoListState extends State<VideoList> {
  late Future<MovieVideoResponse> futureVideo;
  @override
  void initState() {
    super.initState();
    futureVideo = fetchVideo(widget.movieId);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<MovieVideoResponse>(
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

          return VideoListWidget();
        } else {
          return const Center(
            child: Text('No data found'),
          );
        }
      },
    );
  }
}
