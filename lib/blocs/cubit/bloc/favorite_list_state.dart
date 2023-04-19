part of 'favorite_list_bloc.dart';

class FavoriteListState extends Equatable {
  final List<MovieDetail>? favouriteMovies;

  const FavoriteListState({this.favouriteMovies});
  FavoriteListState copyWith({List<MovieDetail>? favouriteMovies}) =>
      FavoriteListState(
          favouriteMovies: favouriteMovies ?? this.favouriteMovies);

  @override
  // TODO: implement props
  List<Object?> get props => [favouriteMovies ?? []];
}
