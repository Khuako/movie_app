import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/models/recommended_movies.dart';
import 'package:movies_app/resources/repository.dart';

part 'recommended_movie_state.dart';

class RecommendedMovieCubit extends Cubit<RecommendedMovieState> {
  RecommendedMovieCubit() : super(RecommendedMovieInitial());
  Future<void> getAllRecommendedMovies() async {
    emit(RecommendedMovieLoading());
    final result = await Repository().fetchAllRecommendedMovies();
    emit(RecommendedMovieSuccess(recommendedMovieList: result.items!));
  }
}
