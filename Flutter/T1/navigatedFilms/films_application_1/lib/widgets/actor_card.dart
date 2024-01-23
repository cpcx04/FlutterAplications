import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActorCard extends StatelessWidget {
  const ActorCard({Key? key, required this.url, required this.actorName})
      : super(key: key);

  final String url, actorName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                child: SizedBox(
                  height: 250,
                  child: Stack(
                    children: [
                      Image.network(
                        url,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Colors.black, Colors.transparent])),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(actorName,
                                style: GoogleFonts.grapeNuts(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
