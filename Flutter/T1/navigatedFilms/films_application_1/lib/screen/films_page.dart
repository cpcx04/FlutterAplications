import 'package:films_application_1/widgets/film_card.dart';
import 'package:flutter/material.dart';

class FilmsPage extends StatelessWidget {
  const FilmsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FilmCard(),
    );
  }
}
