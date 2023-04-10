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
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(children: [
          _searchBarWidget(),
          BlocBuilder<SearchTitleCubit, SearchTitleState>(
            builder: (context, state) {
              if (state is SearchTitleFailure) {
                return const Center(
                  child: Text(
                    'No movies or Tv-series found',
                    style: Constants.titleTextStyle,
                  ),
                );
              } else if (state is SearchTitleSuccess) {
                return ListMovieWidget()
                    .searchMovieWidget(context, state.results, 0, 'Search');
              }
              if (state is SearchTitleLoading) {
                return const Center(
                  child:
                      CircularProgressIndicator(color: Constants.yellowColor),
                );
              }
              return const Center(
                child: Text(
                  'Here will be movies you are searching for',
                  style: Constants.titleTextStyle,
                ),
              );
            },
          )
        ]),
      ),
    );
  }

  Widget _searchBarWidget() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        autocorrect: false,
        keyboardType: TextInputType.visiblePassword,
        autofocus: true,
        style: Constants.searchTextStyle,
        controller: _searchController,
        onSubmitted: (value) {
          context.read<SearchTitleCubit>().getAllSearchTitle(value);
        },
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            prefixIconColor: Constants.yellowColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Constants.yellowColor),
              borderRadius: BorderRadius.circular(20),
            ),
            hintText: 'Movies, TV-Shows....',
            hintStyle: Constants.genreTextStyle),
      ),
    );
  }
}
