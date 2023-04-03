import 'package:movies_app/models/films_list.dart';
import 'package:movies_app/models/most_popular_movies.dart';
import 'package:movies_app/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class MoviesPopularBloc {
  final repository = Repository();
  final moviePopularListFetcher = PublishSubject<MostPopularMovies>();
  Stream<MostPopularMovies> get allPopularMovies =>
      moviePopularListFetcher.stream;
  fetchMostPopularMovies() async {
    MostPopularMovies popularMovieList =
        await repository.fetchAllPopularMovies();
    moviePopularListFetcher.sink.add(popularMovieList);
  }

  dispose() {
    moviePopularListFetcher.close();
  }
}
