part of 'box_office_cubit_cubit.dart';

@immutable
abstract class BoxOfficeCubitState {}

class BoxOfficeCubitInitial extends BoxOfficeCubitState {}

class BoxOfficeCubitLoading extends BoxOfficeCubitState {}

class BoxOfficeCubitSuccess extends BoxOfficeCubitState {
  final List<BoxOfficeFilm> boxOfficeFilmList;

  BoxOfficeCubitSuccess({required this.boxOfficeFilmList});
}
