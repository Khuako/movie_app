// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:meta/meta.dart';
import 'package:movies_app/resources/repository.dart';
import 'package:collection/collection.dart';
import '../../../models/movie_detail.dart';

part 'favorite_list_event.dart';
part 'favorite_list_state.dart';

class FavoriteListBloc extends Bloc<FavoriteListEvent, FavoriteListState> {
  final Repository repository = Repository();
  FavoriteListBloc() : super(const FavoriteListState()) {
    on<ChangedFavorites>(_onClickFavourites);
    on<ChangedMoviesDB>(_onChangeDB);
    repository.onChangedMoviesDB().listen((event) {
      add(ChangedMoviesDB(models: event));
    });
  }
  void _onClickFavourites(
      ChangedFavorites event, Emitter<FavoriteListState> emit) async {
    final MovieDetail? targetMovie = event.model;
    MovieDetail? movie;
    if (state.favouriteMovies?.isNotEmpty == true) {
      movie = state.favouriteMovies
          ?.firstWhereOrNull((element) => element.id == targetMovie?.id);
    }
    if (movie != null) {
      await repository.deleteMovieDB(movie.id!);
    } else if (targetMovie != null) {
      await repository.insertMovieDB(targetMovie);
    }
  }

  void _onChangeDB(ChangedMoviesDB event, Emitter<FavoriteListState> emit) {
    emit(state.copyWith(favouriteMovies: event.models));
  }
}
