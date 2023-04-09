import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/models/search_title.dart';
import 'package:movies_app/resources/repository.dart';

part 'search_title_state.dart';

class SearchTitleCubit extends Cubit<SearchTitleState> {
  SearchTitleCubit() : super(SearchTitleInitial());
  Future<void> getAllSearchTitle(String query) async {
    emit(SearchTitleLoading());
    final response = await Repository().fetchAllSearchTitle(query);
    if (response.results!.isNotEmpty) {
      emit(SearchTitleSuccess(results: response.results!));
    } else {
      emit(SearchTitleFailure());
    }
  }
}
