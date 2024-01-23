import 'package:films_application_1/models/actor_list_response/actor_list_response.dart';
import 'package:films_application_1/widgets/actor_card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<ActorListResponse> fetchAlbum() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/person/popular?api_key=e3d23f2096498dbb777cd454a348e001'));

  if (response.statusCode == 200) {
    return ActorListResponse.fromJson(response.body);
  } else {
    throw Exception('No list found');
  }
}

class ActorPage extends StatefulWidget {
  const ActorPage({super.key});

  @override
  State<ActorPage> createState() => _ActorPageState();
}

class _ActorPageState extends State<ActorPage> {
  late Future<ActorListResponse> futureAlbum;

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
        } else if (!snapshot.hasData || snapshot.data?.results == null) {
          return const Text('No hay datos');
        } else {
          return SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 20,
                  mainAxisExtent: 280,
                  crossAxisCount: 2,
                ),
                itemCount: snapshot.data!.results.length,
                itemBuilder: (context, index) {
                  final actor = snapshot.data!.results[index];

                  return ActorCard(
                    url:
                        'https://image.tmdb.org/t/p/w500/${actor.profilePath!}',
                    actorName: actor.name!,
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
