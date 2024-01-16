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

  final String precio;
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
                  widget.imagenUrl,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),

              // Modelo y precio al lado
              Padding(
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
                                '${widget.nombre} ${widget.modelo}',
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${widget.descripcion}',
                                style: const TextStyle(
                                    color: Color.fromRGBO(120, 102, 102, 0.8)),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: SizedBox(
                                          width: 20,
                                          child: Image.network(
                                              'https://cdn-icons-png.flaticon.com/512/1820/1820633.png'),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 8.0, top: 8.0),
                                        child: Text('Man'),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(top: 8.0, left: 20),
                                        child: Icon(Icons.severe_cold),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 8.0, top: 8.0),
                                        child: Text('A/A'),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(top: 8.0, left: 20),
                                        child: Icon(Icons.person),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 8.0, top: 8.0),
                                        child: Text('4'),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(top: 8.0, left: 20),
                                        child: Icon(Icons.cases),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 8.0, top: 8.0),
                                        child: Text('1'),
                                      ),
                                    ],
                                  ),
                                ],
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
                  Column(
                    children: [
                      const SizedBox(
                        width: 80,
                      ),
                      Text(
                        '\$${widget.precio}',
                        style: const TextStyle(
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
