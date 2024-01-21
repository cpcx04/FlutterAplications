import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'result.dart';

class Parking extends Equatable {
	final int? totalCount;
	final List<Result>? results;

	const Parking({this.totalCount, this.results});

	factory Parking.fromParkingResponse(Map<String, dynamic> data) => Parking(
				totalCount: data['total_count'] as int?,
				results: (data['results'] as List<dynamic>?)
						?.map((e) => Result.fromParkingResponse(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toParkingResponse() => {
				'total_count': totalCount,
				'results': results?.map((e) => e.toParkingResponse()).toList(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Parking].
	factory Parking.fromJson(String data) {
		return Parking.fromParkingResponse(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Parking] to a JSON string.
	String toJson() => json.encode(toParkingResponse());

	@override
	List<Object?> get props => [totalCount, results];
}
