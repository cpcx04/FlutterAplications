class Geometry {
  final String type;
  final List<double> coordinates;

  Geometry({
    required this.type,
    required this.coordinates,
  });

  factory Geometry.fromParkingResponse(Map<String, dynamic> data) {
    final List<dynamic> rawCoordinates = data['coordinates'] as List<dynamic>;
    final List<double> convertedCoordinates =
        rawCoordinates.cast<double>().toList();

    return Geometry(
      type: data['type'] as String,
      coordinates: convertedCoordinates,
    );
  }

  Map<String, dynamic> toParkingResponse() {
    return {
      'type': type,
      'coordinates': coordinates,
    };
  }
}
