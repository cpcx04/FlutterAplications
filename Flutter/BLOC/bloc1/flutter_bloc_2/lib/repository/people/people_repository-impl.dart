import 'dart:convert';
import 'package:http/http.dart';

import 'package:flutter_bloc_2/model/people_popular_response/person_list_response/person_list_response.dart';
import 'package:flutter_bloc_2/model/people_popular_response/person_list_response/result.dart';
import 'package:flutter_bloc_2/repository/people/people_repository.dart';

class PeopleRepositoryImpl extends PeopleRepository {
  Client _httpClient = Client();

  @override
  Future<List<People>> fetchPeople(String type) async {
    final response = await this._httpClient.get(Uri.parse(
        'https://api.themoviedb.org/3/person/$type?api_key=e3d23f2096498dbb777cd454a348e001'));
    if (response.statusCode == 200) {
      return PersonListResponse.fromJson(jsonDecode(response.body)).results!;
    } else {
      throw Exception('Failed to load movies');
    }
  }

  @override
  Future<People> fetchPeopleDetails(int id) async {
    final response = await this._httpClient.get(Uri.parse(
        'https://api.themoviedb.org/3/person/$id?api_key=e3d23f2096498dbb777cd454a348e001'));
    if (response.statusCode == 200) {
      return People.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
