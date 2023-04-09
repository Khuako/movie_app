import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/resources/repository.dart';

import '../../models/most_popular_tvs.dart';

part 'popular_tv_cubit_state.dart';

class PopularTvCubitCubit extends Cubit<PopularTvCubitState> {
  PopularTvCubitCubit() : super(PopularTvCubitInitial());
  Future<void> getPopularTv() async {
    emit(PopularTvCubitLoading());
    final result = await Repository().fetchAllPopularTvs();
    emit(PopularTvCubitSuccess(popularTvList: result.items!));
  }
}
