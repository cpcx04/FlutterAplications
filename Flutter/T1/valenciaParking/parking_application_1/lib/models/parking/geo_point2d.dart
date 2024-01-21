import 'dart:convert';

import 'package:equatable/equatable.dart';

class GeoPoint2d extends Equatable {
	final double? lon;
	final double? lat;

	const GeoPoint2d({this.lon, this.lat});

	factory GeoPoint2d.fromParkingResponse(Map<String, dynamic> data) {
		return GeoPoint2d(
			lon: (data['lon'] as num?)?.toDouble(),
			lat: (data['lat'] as num?)?.toDouble(),
		);
	}



	Map<String, dynamic> toParkingResponse() => {
				'lon': lon,
				'lat': lat,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GeoPoint2d].
	factory GeoPoint2d.fromJson(String data) {
		return GeoPoint2d.fromParkingResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [GeoPoint2d] to a JSON string.
	String toJson() => json.encode(toParkingResponse());

	@override
	List<Object?> get props => [lon, lat];
}
