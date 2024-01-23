import 'package:films_application_1/models/film_response/film_response.dart';
import 'package:films_application_1/widgets/film_card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<FilmResponse> fetchAlbum() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/popular?api_key=e3d23f2096498dbb777cd454a348e001'));

  if (response.statusCode == 200) {
    return FilmResponse.fromJson(response.body);
  } else {
    throw Exception('No list found');
  }
}

class FilmPage extends StatefulWidget {
  const FilmPage({super.key});

  @override
  State<FilmPage> createState() => _FilmPageState();
}

class _FilmPageState extends State<FilmPage> {
  late Future<FilmResponse> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData) {
          return const Text('No hay datos');
        } else {
          return SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 20,
                  mainAxisExtent: 320,
                  crossAxisCount: 2, // Número de columnas (2 en este caso)
                  mainAxisSpacing: 10.0, // Espacio vertical entre elementos
                ),
                itemCount: snapshot.data!.results!.length,
                itemBuilder: (context, index) {
                  final film = snapshot.data!.results![index];
                  return FilmCard(
                    url: film.posterPath,
                    filmName: film.title!,
                  );
                },
              ),
            ),
          );
        }
      },
    );
  }
}
