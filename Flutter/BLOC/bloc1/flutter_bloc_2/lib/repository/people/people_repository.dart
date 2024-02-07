import 'package:flutter_bloc_2/model/people_popular_response/person_list_response/result.dart';

abstract class PeopleRepository {
  Future<List<People>> fetchPeople(String people);
  Future<People> fetchPeopleDetails(int peopleId);
}
