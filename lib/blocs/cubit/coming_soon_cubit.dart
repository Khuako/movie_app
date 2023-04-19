import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/models/coming_soon.dart';
import 'package:movies_app/resources/repository.dart';

part 'coming_soon_state.dart';

class ComingSoonCubit extends Cubit<ComingSoonState> {
  ComingSoonCubit() : super(const ComingSoonInitial());
  Future<void> getComingSoon() async {
    emit(const ComingSoonLoading());
    try {
      final result = await Repository().fetchAllComingSoon();
      emit(ComingSoonLoaded(comingSoonFilmsList: result.items!));
    } catch (e) {
      emit(ComingSoonFailure());
    }
  }
}
