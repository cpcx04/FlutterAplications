import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard(required String name, {super.key, required this.name, required this.height});

  final String name;

  final int height;

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
              Center(
                child: Image.network(
                  'https://static.wikia.nocookie.net/espokemon/images/4/43/Bulbasaur.png/revision/latest?cb=20170120032346',
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
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
                                '$name',
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                'Pica como un cabron',
                                style: TextStyle(
                                    color: Color.fromRGBO(120, 102, 102, 0.8)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                        'Info',
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
                            onPressed: () {},
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
