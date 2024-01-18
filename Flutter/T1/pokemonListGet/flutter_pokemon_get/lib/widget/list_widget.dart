import 'package:flutter/material.dart';
import 'package:flutter_pokemon_get/models/pokemonList/pokemon_list_response/pokemon_list_response.dart';
import 'package:http/http.dart' as http;

Future<PokemonListResponse> fetchAlbum() async {
  final response =
      await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon'));
  if (response.statusCode == 200) {
    return PokemonListResponse.fromJson(response.body);
  } else {
    throw Exception('Failed to load the pokemon list');
  }
}

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<PokemonListResponse> futureAlbum;

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
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData) {
          return const Text('No hay datos');
        } else {
          return ListView.builder(
            itemCount: snapshot.data!.results!.length,
            itemBuilder: (context, index) {
              final pokemon = snapshot.data!.results?[index];
              return ElevatedButton(
                onPressed: ({index}) {},
                child: Text(pokemon!.name),
              );
            },
          );
        }
      },
    );
  }
}
