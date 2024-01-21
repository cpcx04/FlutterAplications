import 'package:flutter/material.dart';
import 'package:parking_application_1/widgets/parking_response.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Center(child: Text('Valencia Parking')),
        ),
      ),
      body: const ParkingResponse(),
    );
  }
}
