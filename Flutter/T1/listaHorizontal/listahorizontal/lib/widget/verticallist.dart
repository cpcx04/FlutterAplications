import 'package:flutter/material.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600, // Establece una altura fija para todas las imágenes
      child: Padding(
        padding: EdgeInsets.only(top: 40, bottom: 30),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(
              width: 250,
              child: Row(
                children: [
                  Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(124.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(124.0),
                          child: const Image(
                            image: NetworkImage(
                              'https://hips.hearstapps.com/hmg-prod/images/mh-celeb-name-changes-1567632828.png?crop=0.429xw:0.859xh;0.0321xw,0&resize=640:*',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [Text('Bradd Pitt')],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
