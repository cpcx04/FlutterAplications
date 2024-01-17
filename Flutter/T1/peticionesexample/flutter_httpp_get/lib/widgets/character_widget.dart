import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_httpp_get/models/character_response/character_response.dart';
import 'package:http/http.dart' as http;

Future<CharacterResponse> fetchAlbum() async {
  final response =
      await http.get(Uri.parse('https://rickandmortyapi.com/api/character/37'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return CharacterResponse.fromJson(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Character extends StatefulWidget {
  const Character({Key? key}) : super(key: key);

  @override
  State<Character> createState() => _CharacterState();
}

class _CharacterState extends State<Character> {
  late Future<CharacterResponse> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CharacterResponse>(
      future: futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SizedBox(
              child: Row(
            children: [
              Column(
                children: [
                  Image(image: NetworkImage('${snapshot.data!.image}')),
                  Text(snapshot.data!.name!),
                ],
              ),
            ],
          ));
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }
}
