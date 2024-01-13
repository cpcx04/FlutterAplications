import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 499,
      child: Padding(
        padding: EdgeInsets.only(bottom: 40),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            // Item 1
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 190,
                    height: 396,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(124.0),
                      child: const Image(
                        image: NetworkImage(
                          'https://hips.hearstapps.com/hmg-prod/images/mh-celeb-name-changes-1567632828.png?crop=0.429xw:0.859xh;0.0321xw,0&resize=340:*',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Brad',
                        style: GoogleFonts.instrumentSerif(
                            textStyle: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                      ),
                      const Text(
                        'Pitt',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 190,
                    height: 396,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(124.0),
                      child: const Image(
                        image: NetworkImage(
                          'https://es.web.img3.acsta.net/pictures/20/01/07/10/30/2919303.jpg?crop=0.429xw:0.859xh;0.0321xw,0&resize=340:*',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jenna',
                        style: GoogleFonts.instrumentSerif(
                            textStyle: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                      ),
                      const Text(
                        'Ortega',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 190,
                    height: 396,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(124.0),
                      child: const Image(
                        image: NetworkImage(
                          'https://es.web.img2.acsta.net/pictures/17/02/08/16/50/452749.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Will',
                        style: GoogleFonts.instrumentSerif(
                            textStyle: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                      ),
                      const Text(
                        'Smith',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
