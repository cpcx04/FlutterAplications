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
              precio: "350",
              imagenUrl:
                  'https://www.motortrend.com/uploads/sites/10/2018/03/2019-chevrolet-corvette-stingray-1lt-targa-angular-front.png',
            )),
        SizedBox(
            width: double.infinity,
            child: CardDesing(
              nombre: "Ferrari",
              modelo: "Portofino",
              descripcion: "2 PUERTAS Ferrari Portofino Gasolina",
              precio: "250",
              imagenUrl:
                  'https://cdn.ferrari.com/cms/network/media/img/resize/5f60fede966ae519cbd62beb-ferrari-portofino-m-design-hotspot-mob-new_3?',
            )),
        SizedBox(
            width: double.infinity,
            child: CardDesing(
              nombre: "Nissan Skyline GTR",
              modelo: "R8",
              descripcion: "4 PUERTAS Skyline GTR Gasoil",
              precio: "80",
              imagenUrl:
                  'https://i.seadn.io/gae/DEeP-8eJ2NK7gMfY7D6NdPRa1xwPBNX721GU3IQbFrBGG9BSOuUiF5Zp2tHj2MBDJb-y7QztbcQM_5jdAl--7cjWlXbtw82LqBCYpQ?auto=format&dpr=1&w=1000',
            )),
        SizedBox(
            width: double.infinity,
            child: CardDesing(
              nombre: "Selby GT",
              modelo: "500",
              descripcion: "2 PUERTAS Shelby GT500 Gasolina",
              precio: "550",
              imagenUrl:
                  'https://d2qldpouxvc097.cloudfront.net/image-by-path?bucket=a5-gallery-serverless-prod-chromebucket-1iz9ffi08lwxm&key=419348%2Ffront34%2Flg%2F9e1c2f',
            )),
        SizedBox(
            width: double.infinity,
            child: CardDesing(
              nombre: "Mercedes Clase",
              modelo: "G",
              descripcion: "4 PUERTAS Mercedes Clase G Gasolina",
              precio: "350",
              imagenUrl:
                  'https://www.enterprise.com/es/exotic-car-rental/vehicles/premium-luxury-suv/mercedes-benz-g-class/_jcr_content/root/teaser_image.coreimg.png/1667858337727/thumbnail-2020-mercedes-benz-g-class-2048x1360.png',
            )),
      ]),
    );
  }
}
