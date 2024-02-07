import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_2/model/people_popular_response/person_list_response/result.dart';
import 'package:meta/meta.dart';

part 'people_event.dart';
part 'people_state.dart';

class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  PeopleBloc() : super(PeopleInitial()) {
    on<PeopleEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
