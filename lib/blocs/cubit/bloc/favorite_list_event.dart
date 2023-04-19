part of 'favorite_list_bloc.dart';

@immutable
abstract class FavoriteListEvent {}

class ChangedFavorites extends FavoriteListEvent {
  final MovieDetail? model;
  ChangedFavorites({required this.model});
}

class ChangedMoviesDB extends FavoriteListEvent {
  final List<MovieDetail> models;
  ChangedMoviesDB({required this.models});
}
