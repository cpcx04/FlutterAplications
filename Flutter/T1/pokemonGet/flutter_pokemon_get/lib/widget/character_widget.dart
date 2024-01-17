import 'package:flutter/material.dart';
import 'package:flutter_pokemon_get/pokemon_response/pokemon_response.dart';
import 'package:flutter_pokemon_get/widget/pokemon_widget.dart';
import 'package:http/http.dart' as http;

Future<PokemonResponse> fetchAlbum() async {
  final response =
      await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return PokemonResponse.fromJson(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Pokemon extends StatefulWidget {
  const Pokemon({super.key});

  @override
  State<Pokemon> createState() => _PokemonState();
}

class _PokemonState extends State<Pokemon> {
  late Future<PokemonResponse> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PokemonResponse>(
      future: futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SizedBox(
            width: double.infinity,
            child: PokemonCard(
              name:
                  '${snapshot.data!.name?[0].toUpperCase()}${snapshot.data!.name?.substring(1)}',
              height: snapshot.data?.height,
              imageUrl: snapshot.data?.sprites?.frontDefault,
            ),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }
}
