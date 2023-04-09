import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/resources/repository.dart';

import '../../models/movie_detail.dart';

part 'movie_detail_state.dart';

class MovieDetailCubit extends Cubit<MovieDetailState> {
  MovieDetailCubit() : super(MovieDetailInitial());

  Future<void> getMovieDetail(String movieId) async {
    emit(MovieDetailLoading());
    final result = await Repository().fetchAllMovieDetail(movieId);
    try {
      emit(MovieDetailSuccess(movieDetail: result));
    } catch (e) {
      emit(MovieDetailFailure());
    }
  }
}
