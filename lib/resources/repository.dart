import 'package:movies_app/models/box_office.dart';
import 'package:movies_app/models/coming_soon.dart';
import 'package:movies_app/models/films_list.dart';
import 'package:movies_app/models/most_popular_movies.dart';
import 'package:movies_app/models/most_popular_tvs.dart';
import 'package:movies_app/models/movie_detail.dart';
import 'package:movies_app/models/recommended_movies.dart';
import 'package:movies_app/resources/movie_api_provider.dart';

class Repository {
  final movieApiProvider = MovieApiProvider();
  Future<FilmsList> fetchAllMovies() => movieApiProvider.fetchMovieList();
  Future<MostPopularMovies> fetchAllPopularMovies() =>
      movieApiProvider.fetchMostPopularMoviesList();
  Future<MostPopularTvs> fetchAllPopularTvs() =>
      movieApiProvider.fetchMostPopularTVList();
  Future<ComingSoon> fetchAllComingSoon() => movieApiProvider.fetchComingSoon();
  Future<BoxOffice> fetchAllBoxOffice() => movieApiProvider.fetchBoxOffice();
  Future<RecommendedMovies> fetchAllRecommendedMovies() =>
      movieApiProvider.fetchRecommendedMovies();
  Future<MovieDetail> fetchAllMovieDetail(String movieId) =>
      movieApiProvider.fetchMovieDetail(movieId);
}
