import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({super.key, required this.title});

  final String title;

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  int _local = 0;

  int _visitante = 0;

  bool dark = false;

  bool sun = true;

  void _incrementLocal() {
    setState(() {
      _local++;
    });
  }

  void _incrementLocalDouble() {
    setState(() {
      _local = _local + 2;
    });
  }

  void _incrementLocalTriple() {
    setState(() {
      _local = _local + 3;
    });
  }

  void _incrementVisitante() {
    setState(() {
      _visitante++;
    });
  }

  void _incrementVisitanteDouble() {
    setState(() {
      _visitante = _visitante + 2;
    });
  }

  void _incrementVisitanteTriple() {
    setState(() {
      _visitante = _visitante + 3;
    });
  }

  void _changeMode() {
    setState(() {
      if (dark) {
        dark = false;
        sun = true;
      } else {
        dark = true;
        sun = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(110),
          child: Stack(children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://us-east-1.linodeobjects.com/gunaxin/2016/02/All-Star-Banner-560x280.jpg',
                      ),
                      fit: BoxFit.cover)),
            ),
            Container(
              color: Colors.black.withOpacity(0.5),
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Center(
                          child: Text(
                            'NBA',
                            style: GoogleFonts.lemon(
                              color: Colors.white,
                              fontSize: 45,
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            )
          ]),
        ),
        body: Container(
          color: sun ? Colors.white : Colors.black,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 200),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 160,
                                height: 98,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Los_Angeles_Lakers_logo.svg/2560px-Los_Angeles_Lakers_logo.svg.png',
                                        ),
                                        fit: BoxFit.cover)),
                              )
                            ],
                          ),
                          const SizedBox(width: 50),
                          Column(
                            children: [
                              Container(
                                width: 150,
                                height: 100,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          'https://1000logos.net/wp-content/uploads/2021/04/Miami-Heat-logo.png',
                                        ),
                                        fit: BoxFit.cover)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 80,
                        top: 20,
                      ),
                      child: Row(children: [
                        Column(
                          children: [
                            Text(
                              'Local',
                              style: GoogleFonts.dosis(
                                  color: dark ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                            Text('$_local',
                                style: GoogleFonts.dosis(
                                    color: dark ? Colors.white : Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                          ],
                        ),
                        const SizedBox(
                          width: 120,
                        ),
                        Column(
                          children: [
                            Text('Visitante',
                                style: GoogleFonts.dosis(
                                    color: dark ? Colors.white : Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                            Text(
                              '$_visitante',
                              style: GoogleFonts.dosis(
                                  color: dark ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ],
                        )
                      ]),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            CustomButton(
                              width: 35,
                              backgroundColor:
                                  sun ? Colors.white : Colors.black,
                              isThreeD: true,
                              height: 25,
                              borderRadius: 25,
                              animate: true,
                              margin: const EdgeInsets.all(10),
                              onPressed: () {
                                _incrementLocal();
                              },
                              child: Text("+1",
                                  style: GoogleFonts.dosis(
                                      color: dark ? Colors.white : Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Column(
                          children: [
                            CustomButton(
                              width: 35,
                              backgroundColor:
                                  sun ? Colors.white : Colors.black,
                              isThreeD: true,
                              height: 25,
                              borderRadius: 25,
                              animate: true,
                              margin: const EdgeInsets.all(10),
                              onPressed: () {
                                _incrementLocalDouble();
                              },
                              child: Text("+2",
                                  style: GoogleFonts.dosis(
                                      color: dark ? Colors.white : Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Column(
                          children: [
                            CustomButton(
                              width: 35,
                              backgroundColor:
                                  sun ? Colors.white : Colors.black,
                              isThreeD: true,
                              height: 25,
                              borderRadius: 25,
                              animate: true,
                              margin: const EdgeInsets.all(10),
                              onPressed: () {
                                _incrementLocalTriple();
                              },
                              child: Text("+3",
                                  style: GoogleFonts.dosis(
                                      color: dark ? Colors.white : Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            CustomButton(
                              width: 35,
                              backgroundColor:
                                  sun ? Colors.white : Colors.black,
                              isThreeD: true,
                              height: 25,
                              borderRadius: 25,
                              animate: true,
                              margin: const EdgeInsets.all(10),
                              onPressed: () {
                                _incrementVisitante();
                              },
                              child: Text("+1",
                                  style: GoogleFonts.dosis(
                                      color: dark ? Colors.white : Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Column(
                          children: [
                            CustomButton(
                              width: 35,
                              backgroundColor:
                                  sun ? Colors.white : Colors.black,
                              isThreeD: true,
                              height: 25,
                              borderRadius: 25,
                              animate: true,
                              margin: const EdgeInsets.all(10),
                              onPressed: () {
                                _incrementVisitanteDouble();
                              },
                              child: Text("+2",
                                  style: GoogleFonts.dosis(
                                      color: dark ? Colors.white : Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Column(
                          children: [
                            CustomButton(
                              width: 35,
                              backgroundColor:
                                  sun ? Colors.white : Colors.black,
                              isThreeD: true,
                              height: 25,
                              borderRadius: 25,
                              animate: true,
                              margin: const EdgeInsets.all(10),
                              onPressed: () {
                                _incrementVisitanteTriple();
                              },
                              child: Text("+3",
                                  style: GoogleFonts.dosis(
                                      color: dark ? Colors.white : Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: IconButton(
            icon: sun ? const Icon(Icons.dark_mode) : const Icon(Icons.sunny),
            onPressed: () {
              _changeMode();
            },
          ),
        ));
  }
}
