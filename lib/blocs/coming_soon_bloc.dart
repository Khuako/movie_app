import 'package:movies_app/models/coming_soon.dart';
import 'package:movies_app/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class ComingSoonBloc {
  final repository = Repository();
  final comingSoonFetcher = PublishSubject<ComingSoon>();
  Stream<ComingSoon> get allComingSoon => comingSoonFetcher.stream;
  fetchComingSoon() async {
    ComingSoon comingSoonList = await repository.fetchAllComingSoon();
    comingSoonFetcher.sink.add(comingSoonList);
  }

  void dispose() {
    comingSoonFetcher.close();
  }
}
