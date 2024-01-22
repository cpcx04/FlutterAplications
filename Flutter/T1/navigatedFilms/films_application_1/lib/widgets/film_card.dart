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
                  width: double.infinity,
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
            )
          ],
        ),
      ),
    );
  }
}
