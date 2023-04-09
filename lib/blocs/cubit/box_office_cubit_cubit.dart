import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/models/box_office.dart';
import 'package:movies_app/resources/repository.dart';

part 'box_office_cubit_state.dart';

class BoxOfficeCubitCubit extends Cubit<BoxOfficeCubitState> {
  BoxOfficeCubitCubit() : super(BoxOfficeCubitInitial());
  Future<void> getAllBoxOffice() async {
    emit(BoxOfficeCubitLoading());
    final result = await Repository().fetchAllBoxOffice();
    emit(BoxOfficeCubitSuccess(boxOfficeFilmList: result.items!));
  }
}
