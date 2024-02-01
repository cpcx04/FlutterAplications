import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fuentes_maps_application_1/model/fuentes_valencia_reponse/fuentes_valencia_reponse.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

Future<FuentesValenciaReponse> fetchAlbum() async {
  final response = await http.get(Uri.parse(
      'https://valencia.opendatasoft.com/api/explore/v2.1/catalog/datasets/fonts-daigua-publica-fuentes-de-agua-publica/records?limit=20'));
  if (response.statusCode == 200) {
    return FuentesValenciaReponse.fromJson(response.body);
  } else {
    throw Exception('Failed to load the list');
  }
}

class MapValencia extends StatefulWidget {
  const MapValencia({super.key});

  @override
  State<MapValencia> createState() => _MapValenciaState();
}

class _MapValenciaState extends State<MapValencia> {
  late Future<FuentesValenciaReponse> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition cameraPosition = CameraPosition(
    target: LatLng(39.46973029966386, -0.37550090754877496),
    zoom: 15.9746,
  );

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
          final fuentesList = snapshot.data!.results;

          return Scaffold(
            body: GoogleMap(
              mapType: MapType.hybrid,
              initialCameraPosition: cameraPosition,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              markers: Set<Marker>.from(
                fuentesList!.map(
                  (fuentes) => Marker(
                    markerId: MarkerId(fuentes.calle.toString()),
                    position: LatLng(
                      fuentes.geoPoint2d!.lat!,
                      fuentes.geoPoint2d!.lon!,
                    ),
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
