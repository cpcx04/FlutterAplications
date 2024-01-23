import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilmCard extends StatelessWidget {
  const FilmCard({Key? key, required this.url, required this.filmName})
      : super(key: key);

  final String url, filmName;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0, // Ajusta el sombreado a 0
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  'https://image.tmdb.org/t/p/w500$url',
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.black, Colors.transparent])),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        filmName,
                        style: GoogleFonts.grapeNuts(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
