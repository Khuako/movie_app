part of 'recommended_movie_cubit.dart';

@immutable
abstract class RecommendedMovieState {}

class RecommendedMovieInitial extends RecommendedMovieState {}

class RecommendedMovieLoading extends RecommendedMovieState {}

class RecommendedMovieSuccess extends RecommendedMovieState {
  final List<RecommendedMovie> recommendedMovieList;

  RecommendedMovieSuccess({required this.recommendedMovieList});
}
