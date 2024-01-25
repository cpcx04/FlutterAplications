import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:films_application_1/screen/detalle_pelicula.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:transparent_image/transparent_image.dart';

class FilmCard extends StatelessWidget {
  const FilmCard(
      {Key? key,
      required this.url,
      required this.filmName,
      required this.rating,
      required this.movieId,
      required this.loading})
      : super(key: key);

  final bool loading;
  final int movieId;
  final String url, filmName;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetallePelicula(
              movieId: movieId,
            ),
          ),
        );
      },
      child: Skeletonizer(
        enabled: loading,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    FadeInImage.memoryNetwork(
                      image: 'https://image.tmdb.org/t/p/w500$url',
                      placeholder: kTransparentImage,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.black, Colors.transparent],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: RatingBar.readOnly(
                            size: 22,
                            filledIcon: Icons.star_rounded,
                            emptyIcon: Icons.star_border,
                            initialRating: rating,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            filmName,
                            style: GoogleFonts.grapeNuts(
                              color: const Color.fromARGB(255, 255, 255, 255),
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
        ),
      ),
    );
  }
}
