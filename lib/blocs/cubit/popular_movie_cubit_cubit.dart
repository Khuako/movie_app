import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/most_popular_movies.dart';
import '../../resources/repository.dart';

part 'popular_movie_cubit_state.dart';

class PopularMovieCubitCubit extends Cubit<PopularMovieCubitState> {
  PopularMovieCubitCubit() : super(PopularMovieCubitInitial());
  Future<void> getPopularMovies() async {
    emit(PopularMovieCubitLoading());
    final result = await Repository().fetchAllPopularMovies();
    emit(PopularMovieCubitSuccess(popularMoviesList: result.items!));
  }
}
