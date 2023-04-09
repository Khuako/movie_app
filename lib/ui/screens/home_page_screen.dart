import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/blocs/cubit/box_office_cubit_cubit.dart';

import 'package:movies_app/blocs/cubit/coming_soon_cubit.dart';
import 'package:movies_app/blocs/cubit/popular_movie_cubit_cubit.dart';
import 'package:movies_app/blocs/cubit/popular_tv_cubit_cubit.dart';
import 'package:movies_app/blocs/cubit/recommended_movie_cubit.dart';

import 'package:movies_app/constants.dart';
import 'package:movies_app/models/box_office.dart';
import 'package:movies_app/models/coming_soon.dart';
import 'package:movies_app/models/most_popular_movies.dart';
import 'package:movies_app/models/most_popular_tvs.dart';
import 'package:movies_app/resources/repository.dart';
import 'package:movies_app/ui/screens/movie_detail_screen.dart';
import 'package:movies_app/ui/widgets/list_movie_widget.dart';

import '../../blocs/cubit/movie_detail_cubit.dart';
import '../../models/recommended_movies.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedIndex = 0;
  List<String> categories = const [
    'Popular',
    'Coming Soon',
    'Box Office',
    'Popular TVs'
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    context.read<PopularMovieCubitCubit>().close();
    context.read<PopularTvCubitCubit>().close();
    context.read<BoxOfficeCubitCubit>().close();
    context.read<RecommendedMovieCubit>().close();
    context.read<ComingSoonCubit>().close();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: ((context) => MovieDetailCubit()),
        ),
      ],
      child: Scaffold(
        backgroundColor: Constants.blackColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {
                          _selectedIndex = index;
                          setState(() {});
                        },
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Ms',
                            fontWeight: FontWeight.bold,
                            color: _selectedIndex == index
                                ? Constants.yellowColor
                                : Colors.white,
                            decoration: _selectedIndex == index
                                ? TextDecoration.underline
                                : null,
                            decorationColor: Constants.yellowColor,
                            decorationThickness: 2,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              if (_selectedIndex == 0)
                BlocBuilder<PopularMovieCubitCubit, PopularMovieCubitState>(
                    builder: (context, state) {
                  if (state is PopularMovieCubitSuccess) {
                    return ListMovieWidget().listMovieWidget(
                        context, state.popularMoviesList, _selectedIndex);
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
              if (_selectedIndex == 1)
                BlocBuilder<ComingSoonCubit, ComingSoonState>(
                    builder: (context, state) {
                  if (state is ComingSoonLoaded) {
                    return ListMovieWidget().listMovieWidget(
                        context, state.comingSoonFilmsList, _selectedIndex);
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
              if (_selectedIndex == 2)
                BlocBuilder<BoxOfficeCubitCubit, BoxOfficeCubitState>(
                    builder: (context, state) {
                  if (state is BoxOfficeCubitSuccess) {
                    return ListMovieWidget().listMovieWidget(
                        context, state.boxOfficeFilmList, _selectedIndex);
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
              if (_selectedIndex == 3)
                BlocBuilder<PopularTvCubitCubit, PopularTvCubitState>(
                    builder: (context, state) {
                  if (state is PopularTvCubitSuccess) {
                    return ListMovieWidget().listMovieWidget(
                        context, state.popularTvList, _selectedIndex);
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
              const Padding(
                padding: EdgeInsets.only(right: 10, left: 10, bottom: 20),
                child: Text(
                  'Recommended',
                  style: TextStyle(
                      color: Colors.white, fontSize: 24, fontFamily: 'Ms'),
                ),
              ),
              BlocBuilder<RecommendedMovieCubit, RecommendedMovieState>(
                builder: (context, state) {
                  if (state is RecommendedMovieSuccess) {
                    return Column(
                      children: [
                        _recommendedMovieListWidget(
                            context, state.recommendedMovieList),
                      ],
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _clickOnMovie(String movieId, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return MovieDetailScreen(movieId: movieId);
        },
      ),
    );
  }

  SizedBox _recommendedMovieListWidget(
      BuildContext context, List<RecommendedMovie> movieList) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .5,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          List<String> genres = [];
          int n = movieList[index].genreList!.length;
          for (int i = 0; i < n; i++) {
            if (i == movieList[index].genreList!.length - 1 || i == 3) {
              genres.add(movieList[index].genreList![i].value!);
              break;
            } else {
              genres.add(movieList[index].genreList![i].value!);
            }
          }
          return InkWell(
            onTap: () => _clickOnMovie(movieList[index].id!, context),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * .5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 0, left: 8, bottom: 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width * .45,
                          height: MediaQuery.sizeOf(context).height * .35,
                          child: CachedNetworkImage(
                            imageUrl: movieList[index].image ??
                                "https://m.media-amazon.com/images/M/MV5BZGUzYTI3M2EtZmM0Yy00NGUyLWI4ODEtN2Q3ZGJlYzhhZjU3XkEyXkFqcGdeQXVyNTM0OTY1OQ@@._V1_Ratio0.6716_AL_.jpg",
                            maxWidthDiskCache: 400,
                            maxHeightDiskCache: 400,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => const Center(
                              child: CircularProgressIndicator(
                                color: Constants.yellowColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            movieList[index].title!,
                            style: Constants.titleTextStyle,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              movieList[index].releaseState!,
                              style: Constants.titleTextStylePink,
                              maxLines: 3,
                              softWrap: false,
                            ),
                          ),
                          Text(
                            '${genres.map((e) => e.toString()).toString()}'
                                .substring(
                                    1,
                                    genres
                                            .map((e) => e.toString())
                                            .toString()
                                            .length -
                                        1),
                            style: Constants.genreTextStyle,
                            maxLines: 3,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.star,
                                  color: Constants.yellowColor, size: 28),
                              const SizedBox(
                                width: 5,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: '${movieList[index].imDbRating} / ',
                                  style: const TextStyle(
                                      color: Constants.whiteColor,
                                      fontSize: 20,
                                      fontFamily: 'Ms'),
                                  children: const [
                                    TextSpan(
                                      text: '10',
                                      style: TextStyle(
                                          color: Constants.whiteColor,
                                          fontSize: 14,
                                          fontFamily: 'Ms'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
