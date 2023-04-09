import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/models/box_office.dart';
import 'package:movies_app/models/coming_soon.dart';
import 'package:movies_app/resources/repository.dart';

part 'coming_soon_state.dart';

class ComingSoonCubit extends Cubit<ComingSoonState> {
  ComingSoonCubit() : super(ComingSoonInitial());
  Future<void> getComingSoon() async {
    emit(ComingSoonLoading());
    try {
      final result = await Repository().fetchAllComingSoon();
      emit(ComingSoonLoaded(comingSoonFilmsList: result.items!));
    } catch (e) {
      emit(ComingSoonFailure());
    }
  }
}
