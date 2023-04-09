part of 'popular_movie_cubit_cubit.dart';

@immutable
abstract class PopularMovieCubitState {}

class PopularMovieCubitInitial extends PopularMovieCubitState {}

class PopularMovieCubitLoading extends PopularMovieCubitState {}

class PopularMovieCubitSuccess extends PopularMovieCubitState {
  final List<PopularMovie> popularMoviesList;

  PopularMovieCubitSuccess({required this.popularMoviesList});
}
