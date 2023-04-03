import 'package:movies_app/models/most_popular_tvs.dart';
import 'package:movies_app/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class MostPopularTvBloc {
  final repository = Repository();
  final tvFetcher = PublishSubject<MostPopularTvs>();
  Stream<MostPopularTvs> get allPopularTvs => tvFetcher.stream;
  fetchMostPopularTvList() async {
    MostPopularTvs popularTvsList = await repository.fetchAllPopularTvs();
    tvFetcher.sink.add(popularTvsList);
  }

  void dispose() {
    tvFetcher.close();
  }
}
