import 'package:movies_app/models/box_office.dart';
import 'package:movies_app/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class BoxOfficeBloc {
  final repository = Repository();
  final boxOfficeListFetcher = PublishSubject<BoxOffice>();
  Stream<BoxOffice> get allboxOffice => boxOfficeListFetcher.stream;
  fetchBoxOffice() async {
    BoxOffice boxOfficeList = await repository.fetchAllBoxOffice();
    boxOfficeListFetcher.sink.add(boxOfficeList);
  }

  void dispose() {
    boxOfficeListFetcher.close();
  }
}
