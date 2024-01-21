import 'package:parking_application_1/models/parking/geometry.dart';

class GeoShape {
  final String type;
  final Geometry geometry;
  final Map<String, dynamic> properties;

  GeoShape({
    required this.type,
    required this.geometry,
    required this.properties,
  });

  factory GeoShape.fromParkingResponse(Map<String, dynamic> data) {
    return GeoShape(
      type: data['type'] as String,
      geometry: Geometry.fromParkingResponse(
        data['geometry'] as Map<String, dynamic>,
      ),
      properties: data['properties'] as Map<String, dynamic>,
    );
  }

  Map<String, dynamic> toParkingResponse() {
    return {
      'type': type,
      'geometry': geometry.toParkingResponse(),
      'properties': properties,
    };
  }
}
