part of 'search_title_cubit.dart';

@immutable
abstract class SearchTitleState {}

class SearchTitleInitial extends SearchTitleState {}

class SearchTitleLoading extends SearchTitleState {}

class SearchTitleSuccess extends SearchTitleState {
  List<Results> results;
  SearchTitleSuccess({required this.results});
}

class SearchTitleFailure extends SearchTitleState {}
