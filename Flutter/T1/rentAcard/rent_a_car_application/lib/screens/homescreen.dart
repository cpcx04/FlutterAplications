import 'package:flutter/material.dart';
import 'package:rent_a_car_application/widgets/cardesgin.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 20, 52),
        title: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'París Charles de Gaulle',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Text(
                        '13 abr. 2020- 15 abr.2020',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 120),
                  child: Column(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '86 resultados',
                        style: TextStyle(
                            color: Color.fromARGB(255, 109, 108, 108),
                            fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 182,
                  ),
                  Column(
                    children: [
                      Text(
                        'FILTRAR',
                        style: TextStyle(
                            color: Color.fromARGB(255, 34, 147, 223),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(children: const [
        SizedBox(
            width: double.infinity,
            child: CardDesing(
              nombre: "Corvette",
              modelo: "C7",
              descripcion: "2-3 PUERTAS Corvette c7 Gasolina",
              precio: 350,
              imagenUrl:
                  'https://www.motortrend.com/uploads/sites/10/2018/03/2019-chevrolet-corvette-stingray-1lt-targa-angular-front.png',
            ))
      ]),
    );
  }
}
