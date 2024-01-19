import 'package:flutter/material.dart';
import 'package:parking_application_1/widgets/parking_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Center(child: Text('Valencia Parking')),
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: const [ParkingCard()],
          ),
        ));
  }
}
