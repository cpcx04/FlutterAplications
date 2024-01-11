import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CardItem extends StatelessWidget {
  final String nombre;
  final String image;
  final double rating;

  const CardItem(
      {Key? key,
      required this.nombre,
      required this.image,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: const Color.fromRGBO(0, 0, 0, 0.6),
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: SizedBox(
            width: 350,
            height: 500,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image(
                        image: NetworkImage(image),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              nombre,
                              style: TextStyle(color: Colors.grey.shade50),
                            ),
                          ),
                          RatingBar.builder(
                            itemSize: 27,
                            initialRating: rating,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Expanded(child: Text("C/Valparaiso,12")),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
