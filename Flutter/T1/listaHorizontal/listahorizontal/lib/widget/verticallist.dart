import 'package:flutter/material.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
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
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Brad',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      Text(
                        'Pitt',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      )
                    ],
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
