import 'package:flutter/material.dart';
import 'package:rent_a_car_application/screens/secondscreen.dart';

class CardDesing extends StatefulWidget {
  const CardDesing(
      {super.key,
      required this.nombre,
      required this.modelo,
      required this.descripcion,
      required this.imagenUrl,
      required this.precio});

  final String nombre;

  final String modelo;

  final String descripcion;

  final String imagenUrl;

  final double precio;
  @override
  State<CardDesing> createState() => _CardDesingState();
}

class _CardDesingState extends State<CardDesing> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        child: Card(
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'El mas caro, Buena puntuacion',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '45 ofertas',
                          style: TextStyle(
                              color: Color.fromARGB(255, 66, 66, 66),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: Image.network(
                  'https://www.motortrend.com/uploads/sites/10/2018/03/2019-chevrolet-corvette-stingray-1lt-targa-angular-front.png',
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),

              // Modelo y precio al lado
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Corvette C7',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '2-3 puertas Corvete c7 Gasolina',
                                style: TextStyle(
                                    color: Color.fromRGBO(120, 102, 102, 0.8)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                // Ajusta los atributos según tus necesidades
                color: Color.fromARGB(255, 133, 133, 133),
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        '\$350',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 0, 105, 167)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InfoCar()),
                              );
                            },
                            child: const Text('SELECCIONAR',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 0, 105, 167))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
