part of 'movie_detail_cubit.dart';

@immutable
abstract class MovieDetailState {}

class MovieDetailInitial extends MovieDetailState {}

class MovieDetailLoading extends MovieDetailState {}

class MovieDetailFailure extends MovieDetailState {}

class MovieDetailSuccess extends MovieDetailState {
  MovieDetail movieDetail;
  MovieDetailSuccess({required this.movieDetail});
}
