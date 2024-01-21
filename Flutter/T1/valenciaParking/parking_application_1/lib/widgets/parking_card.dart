import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParkingCard extends StatelessWidget {
  const ParkingCard({Key? key, required this.nombre, required this.direccion})
      : super(key: key);

  final String nombre, direccion;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        child: Card(
          color: Color.fromARGB(126, 0, 0, 0),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 0,
          child: Stack(
            children: [
              Image.asset(
                'images/valencia.png',
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.black.withOpacity(0.3),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nombre,
                      style: GoogleFonts.caveat(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Text(
                      direccion,
                      style: GoogleFonts.caveat(
                        fontSize: 17,
                        color: Color.fromARGB(179, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
