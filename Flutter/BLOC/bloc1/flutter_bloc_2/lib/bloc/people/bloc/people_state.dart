part of 'people_bloc.dart';

@immutable
sealed class PeopleState {}

final class PeopleInitial extends PeopleState {}

final class PeopleFetchLoading extends PeopleState {}

final class PeopleFetchSucess extends PeopleState {
  final List<People> people;
  PeopleFetchSucess(this.people);
}

final class PeopleFetchError extends PeopleState {
  final String message;
  PeopleFetchError(this.message);
}
