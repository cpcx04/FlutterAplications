import 'package:flutter/material.dart';

class FilmCard extends StatelessWidget {
  const FilmCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: 200,
        height: 200,
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
    );
  }
}
