import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/blocs/cubit/search_title_cubit.dart';
import 'package:movies_app/ui/widgets/list_movie_widget.dart';

import '../../constants.dart';

class SearchPageScreen extends StatefulWidget {
  const SearchPageScreen({super.key});

  @override
  State<SearchPageScreen> createState() => _SearchPageScreenState();
}

class _SearchPageScreenState extends State<SearchPageScreen> {
  final _searchController = TextEditingController();
  String query = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.blackColor,
      body: Column(children: [
        _searchBarWidget(),
        // BlocBuilder<SearchTitleCubit, SearchTitleState>(
        //   builder: (context, state) {
        //     if (state is SearchTitleFailure) {
        //       return Center(
        //         child: Text(
        //           'No movies or Tv-series found',
        //           style: Constants.titleTextStyle,
        //         ),
        //       );
        //     } else if (state is SearchTitleSuccess) {
        //       return Center(
        //         child: ListMovieWidget()
        //             .listMovieWidget(context, state.results, 0, 'Search'),
        //       );
        //     }
        //     if (state is SearchTitleLoading) {
        //       return Center(
        //         child: CircularProgressIndicator(color: Constants.yellowColor),
        //       );
        //     }
        //     return Center(
        //       child: Text(
        //         'Here will be movies you are searching for',
        //         style: Constants.titleTextStyle,
        //       ),
        //     );
        //   },
        // )
      ]),
    );
  }

  Widget _searchBarWidget() {
    return TextField(
      controller: _searchController,
      onSubmitted: (value) {
        // context.read<SearchTitleCubit>().getAllSearchTitle(value);
      },
    );
  }
}
