import 'package:flutter/material.dart';

class FilmCard extends StatelessWidget {
  const FilmCard({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 220,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    child: Stack(
                      children: [
                        Image.network(
                          url,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 220,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    child: Stack(
                      children: [
                        Image.network(
                          'https://hips.hearstapps.com/es.h-cdn.co/fotoes/images/media/imagenes/reportajes/los-20-posters-de-peliculas-mas-creativos/los-idus-de-marzo/7055664-1-esl-ES/LOS-IDUS-DE-MARZO.jpg',
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
