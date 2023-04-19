import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/blocs/cubit/bloc/favorite_list_bloc.dart';
import 'package:movies_app/blocs/cubit/search_title_cubit.dart';
import 'package:movies_app/constants.dart';
import 'package:movies_app/ui/screens/home_page_screen.dart';
import 'package:movies_app/ui/screens/movie_detail_screen.dart';
import 'package:movies_app/ui/screens/root_page_screen.dart';
import 'package:movies_app/ui/screens/search_page_screen.dart';

import 'blocs/cubit/box_office_cubit_cubit.dart';
import 'blocs/cubit/coming_soon_cubit.dart';
import 'blocs/cubit/movie_detail_cubit.dart';
import 'blocs/cubit/popular_movie_cubit_cubit.dart';
import 'blocs/cubit/popular_tv_cubit_cubit.dart';
import 'blocs/cubit/recommended_movie_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: ((context) => ComingSoonCubit()..getComingSoon()),
        ),
        BlocProvider(
          create: ((context) => BoxOfficeCubitCubit()..getAllBoxOffice()),
        ),
        BlocProvider(
          create: ((context) => PopularMovieCubitCubit()..getPopularMovies()),
        ),
        BlocProvider(
          create: ((context) => PopularTvCubitCubit()..getPopularTv()),
        ),
        BlocProvider(
          create: (context) =>
              RecommendedMovieCubit()..getAllRecommendedMovies(),
        ),
        BlocProvider(
          create: ((context) => MovieDetailCubit()),
        ),
        BlocProvider(
          create: ((context) => SearchTitleCubit()),
        ),
        BlocProvider(
          create: ((context) => FavoriteListBloc()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Constants.blackColor),
          useMaterial3: true,
        ),
        routes: {
          '/rootPage': (context) => const RootPageScreen(),
          '/rootPage/homeScreen': (context) => const HomePageScreen(),
          '/rootPage/searchScreen': (context) => const SearchPageScreen(),
          '/rootPage/homeScreen/movie_details': (context) {
            final arguments = (ModalRoute.of(context)?.settings.arguments ??
                <String, dynamic>{}) as Map;
            return MovieDetailScreen(
              movieId: arguments['movieId'],
              sourceScreen: 'Home ',
            );
          },
        },
        initialRoute: '/rootPage',
      ),
    );
  }
}
