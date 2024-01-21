import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:parking_application_1/models/parking/parking.dart';
import 'package:parking_application_1/widgets/parking_card.dart';

Future<Parking> fetchAlbum() async {
  final response = await http.get(Uri.parse(
      'https://valencia.opendatasoft.com/api/explore/v2.1/catalog/datasets/parkings/records?limit=20'));

  if (response.statusCode == 200) {
    return Parking.fromJson(response.body);
  } else {
    throw Exception('No list found');
  }
}

class ParkingResponse extends StatefulWidget {
  const ParkingResponse({super.key});
  @override
  State<ParkingResponse> createState() => _ParkingResponseState();
}

class _ParkingResponseState extends State<ParkingResponse> {
  late Future<Parking> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData) {
          return const Text('No hay datos');
        } else {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: ListView.builder(
              itemCount: snapshot.data!.results!.length,
              itemBuilder: (context, index) {
                final parking = snapshot.data!.results?[index];
                return ParkingCard(
                    direccion: parking!.direccion, nombre: parking.nombre);
              },
            ),
          );
        }
      },
    );
  }
}
