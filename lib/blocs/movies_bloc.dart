import 'package:movies_app/models/films_list.dart';
import 'package:movies_app/models/most_popular_movies.dart';
import 'package:movies_app/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class MoviesBloc {
  final repository = Repository();
  final movieFetcher = PublishSubject<FilmsList>();
  Stream<FilmsList> get allMovies => movieFetcher.stream;
  fetchAllMovies() async {
    FilmsList filmsList = await repository.fetchAllMovies();
    movieFetcher.sink.add(filmsList);
  }

  dispose() {
    movieFetcher.close();
  }
}
