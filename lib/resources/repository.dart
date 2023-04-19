import 'package:movies_app/models/box_office.dart';
import 'package:movies_app/models/coming_soon.dart';
import 'package:movies_app/models/films_list.dart';
import 'package:movies_app/models/most_popular_movies.dart';
import 'package:movies_app/models/most_popular_tvs.dart';
import 'package:movies_app/models/movie_detail.dart';
import 'package:movies_app/models/recommended_movies.dart';
import 'package:movies_app/models/search_title.dart';
import 'package:movies_app/resources/movie_api_provider.dart';
import 'package:drift/drift.dart';

import '../db/movie_table.dart';

class Repository {
  static final _db = MyDatabase.db;
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
  Future<SearchTitle> fetchAllSearchTitle(String query) =>
      movieApiProvider.fetchSearchTitle(query);
  Future<List<MovieDetail>> getAllMoviesDB() async {
    List<MovieTableData> moviesDB = await _db.select(_db.movieTable).get();
    return moviesDB
        .map((MovieTableData movieTableData) => movieTableData.toDomain())
        .toList();
  }

  Future<void> insertMovieDB(MovieDetail movieDetail) async {
    await _db
        .into(_db.movieTable)
        .insert(movieDetail.toDatabase(), mode: InsertMode.insertOrReplace);
  }

  Future<void> deleteMovieDB(String id) async {
    await (_db.delete(_db.movieTable)..where((tbl) => tbl.id.equals(id))).go();
  }

  Stream<List<MovieDetail>> onChangedMoviesDB() {
    return (_db.select(_db.movieTable)).map((p0) => p0.toDomain()).watch();
  }
}

extension MovieDetailToDatabase on MovieDetail {
  MovieTableData toDatabase() {
    return MovieTableData(
        id: id!,
        title: title!,
        picture: image,
        releaseYear: year!,
        imdbRating: imDbRating);
  }
}

extension MovieTableToDomain on MovieTableData {
  MovieDetail toDomain() {
    return MovieDetail(
        id: id,
        title: title,
        image: picture,
        year: releaseYear,
        imDbRating: imdbRating);
  }
}
