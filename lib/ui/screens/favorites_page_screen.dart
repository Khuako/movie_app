import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/blocs/cubit/bloc/favorite_list_bloc.dart';
import 'package:movies_app/ui/widgets/list_movie_widget.dart';

import '../../constants.dart';

class FavoritesPageScreen extends StatefulWidget {
  const FavoritesPageScreen({super.key});

  @override
  State<FavoritesPageScreen> createState() => _FavoritesPageScreenState();
}

class _FavoritesPageScreenState extends State<FavoritesPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.blackColor,
      body: SingleChildScrollView(
          child: BlocBuilder<FavoriteListBloc, FavoriteListState>(
        builder: (context, state) {
          return ListMovieWidget().searchMovieWidget(
              context, state.favouriteMovies ?? [], 1, 'favorites');
        },
      )),
    );
  }
}
