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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
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
                      padding: const EdgeInsets.all(80),
                      child: Center(
                        child: Text(
                          'NBA:Negros bien altos',
                          style: GoogleFonts.lemon(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          )
        ]),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 80),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Los_Angeles_Lakers_logo.svg/2560px-Los_Angeles_Lakers_logo.svg.png',
                                    ),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 150,
                      ),
                      const Column(
                        children: [Text('Patriots')],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 80,
                  ),
                  child: Row(children: [
                    Column(
                      children: [
                        const Text(
                          'Local',
                        ),
                        Text(
                          '$_local',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 150,
                    ),
                    Column(
                      children: [
                        const Text('Visitante'),
                        Text(
                          '$_visitante',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    )
                  ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
