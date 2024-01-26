import 'package:films_application_1/widgets/videos/video_item.dart';
import 'package:flutter/material.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    Key? key,
    required this.imageUrl,
    required this.descripcion,
  }) : super(key: key);

  final String imageUrl;
  final String descripcion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles de la Película'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              'https://image.tmdb.org/t/p/w500$imageUrl',
              fit: BoxFit.cover,
              height: 500, // Ajusta la altura según tus necesidades
            ),
            // Descripción de la película
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                descripcion,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            VideoListWidget()
          ],
        ),
      ),
    );
  }
}
