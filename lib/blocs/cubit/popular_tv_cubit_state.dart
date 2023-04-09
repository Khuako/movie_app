part of 'popular_tv_cubit_cubit.dart';

@immutable
abstract class PopularTvCubitState {}

class PopularTvCubitInitial extends PopularTvCubitState {}

class PopularTvCubitLoading extends PopularTvCubitState {}

class PopularTvCubitSuccess extends PopularTvCubitState {
  final List<PopularTv> popularTvList;
  PopularTvCubitSuccess({required this.popularTvList});
}
