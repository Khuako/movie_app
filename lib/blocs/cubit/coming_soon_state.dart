part of 'coming_soon_cubit.dart';

@immutable
abstract class ComingSoonState {
  const ComingSoonState();
}

class ComingSoonLoading extends ComingSoonState {
  const ComingSoonLoading();
}

class ComingSoonInitial extends ComingSoonState {
  const ComingSoonInitial();
}

class ComingSoonLoaded extends ComingSoonState {
  final List<ComingSoonFilm> comingSoonFilmsList;
  const ComingSoonLoaded({required this.comingSoonFilmsList});
}

class ComingSoonFailure extends ComingSoonState {}
