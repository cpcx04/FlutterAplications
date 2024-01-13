import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(209, 211, 211, 211),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://assets.editorial.aetnd.com/uploads/2019/03/topic-london-gettyimages-760251843-feature.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.5),
              child: const Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: DefaultTextStyle(
                        style: TextStyle(color: Colors.white),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: Icon(Icons.arrow_back_rounded,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 28.0),
                                  child: Text(
                                    'Viaje a Londres',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 28.0),
                                  child: Text('11 - 14 mar.'),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.share, color: Colors.white),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.more_vert_sharp,
                                  color: Colors.white,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Center(
              child: Card(
                color: Color.fromARGB(255, 120, 116, 132),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(300))),
                child: SizedBox(
                  width: 200,
                  height: 40,
                  child: Center(
                    child: Text(
                      'domingo 11 mar.',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal()),
                  child: SizedBox(
                    width: 300,
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Tarde',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text('CHECK-IN',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    )),
                                Text(
                                  'A partir de las 15:00',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Park Plaza Westminster',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Bridge London',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: 0.2),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal()),
                  child: SizedBox(
                    width: 300,
                    height: 200,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('20:55',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text('SALIDA',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    )),
                                SizedBox(height: 50),
                                Text('22:05',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text('LLEGADA',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Card(
                                    borderOnForeground: true,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Colors.black, width: 1.0),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4.0))),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 3,
                                          bottom: 3,
                                          left: 10,
                                          right: 10),
                                      child: Text(
                                        'MAD',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Madrid',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ]),
                                Row(children: [
                                  SizedBox(
                                    height: 22,
                                    child: Image(
                                        image: NetworkImage(
                                            'https://ico.simpleness.org/static/transport-logos/iberia.png')),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Iberia 7448',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ]),
                                Row(children: [
                                  Text(
                                    'Duración 2h 10m',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ]),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Card(
                                      borderOnForeground: true,
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              color: Colors.black, width: 1.0),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4.0))),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 3,
                                            bottom: 3,
                                            left: 10,
                                            right: 10),
                                        child: Text(
                                          'LHR',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Londres',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
