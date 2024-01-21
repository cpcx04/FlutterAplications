import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'geo_point2d.dart';
import 'geo_shape.dart';

class Result extends Equatable {
  final String nombre;
  final String direccion;
  final int? idAparcamiento;
  final String? numeropol;
  final int? tipo;
  final int? plazastota;
  final int? plazaslibr;
  final dynamic ultimaMod;
  final int? objectid;
  final double? ocupacion;
  final GeoShape? geoShape;
  final GeoPoint2d? geoPoint2d;

  const Result({
    required this.nombre,
    required this.direccion,
    this.idAparcamiento,
    this.numeropol,
    this.tipo,
    this.plazastota,
    this.plazaslibr,
    this.ultimaMod,
    this.objectid,
    this.ocupacion,
    this.geoShape,
    this.geoPoint2d,
  });

  factory Result.fromParkingResponse(Map<String, dynamic> data) => Result(
        nombre: data['nombre'] as String,
        direccion: data['direccion'] as String,
        idAparcamiento: (data['id_aparcamiento'] as num?)?.toInt(),
        numeropol: data['numeropol'] as String?,
        tipo: data['tipo'] as int?,
        plazastota: data['plazastota'] as int?,
        plazaslibr: data['plazaslibr'] as int?,
        ultimaMod: data['ultima_mod'] as dynamic,
        objectid: data['objectid'] as int?,
        ocupacion: (data['ocupacion'] as num?)?.toDouble(),
        geoShape: data['geo_shape'] == null
            ? null
            : GeoShape.fromParkingResponse(
                data['geo_shape'] as Map<String, dynamic>),
        geoPoint2d: data['geo_point_2d'] == null
            ? null
            : GeoPoint2d.fromParkingResponse(
                data['geo_point_2d'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toParkingResponse() => {
        'nombre': nombre,
        'direccion': direccion,
        'id_aparcamiento': idAparcamiento,
        'numeropol': numeropol,
        'tipo': tipo,
        'plazastota': plazastota,
        'plazaslibr': plazaslibr,
        'ultima_mod': ultimaMod,
        'objectid': objectid,
        'ocupacion': ocupacion,
        'geo_shape': geoShape?.toParkingResponse(),
        'geo_point_2d': geoPoint2d?.toParkingResponse(),
      };

  factory Result.fromJson(String data) {
    return Result.fromParkingResponse(
        json.decode(data) as Map<String, dynamic>);
  }

  String toJson() => json.encode(toParkingResponse());

  @override
  List<Object?> get props {
    return [
      nombre,
      direccion,
      idAparcamiento,
      numeropol,
      tipo,
      plazastota,
      plazaslibr,
      ultimaMod,
      objectid,
      ocupacion,
      geoShape,
      geoPoint2d,
    ];
  }
}
