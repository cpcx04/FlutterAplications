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
        child: Container(
          padding: EdgeInsets.all(5),
          width: double.infinity,
          child: Column(
            children: [
              Image(
                image: NetworkImage(image),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      nombre,
                      style: TextStyle(color: Colors.grey.shade50),
                    ),
                  ),
                  Expanded(
                    child: RatingBar.builder(
                      itemSize: 27,
                      initialRating: rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(child: Text("C/Valparaiso,12")),
                  Expanded(child: Text("C/Valparaiso,12")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
