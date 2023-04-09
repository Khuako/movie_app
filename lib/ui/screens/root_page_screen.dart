import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/blocs/cubit/box_office_cubit_cubit.dart';
import 'package:movies_app/blocs/cubit/movie_detail_cubit.dart';
import 'package:movies_app/blocs/cubit/popular_movie_cubit_cubit.dart';
import 'package:movies_app/blocs/cubit/popular_tv_cubit_cubit.dart';
import 'package:movies_app/blocs/cubit/recommended_movie_cubit.dart';
import 'package:movies_app/constants.dart';
import 'package:movies_app/models/recommended_movies.dart';
import 'package:movies_app/resources/movie_api_provider.dart';
import 'package:movies_app/ui/screens/profile_page_screen.dart';
import 'package:movies_app/ui/screens/search_page_screen.dart';

import '../../blocs/cubit/coming_soon_cubit.dart';
import 'favorites_page_screen.dart';
import 'home_page_screen.dart';

class RootPageScreen extends StatefulWidget {
  const RootPageScreen({super.key});

  @override
  State<RootPageScreen> createState() => _RootPageScreenState();
}

class _RootPageScreenState extends State<RootPageScreen> {
  int _bottomNavIndex = 0;
  List<Widget> pages = const [
    HomePageScreen(),
    SearchPageScreen(),
    FavoritesPageScreen(),
    ProfilePageScreen(),
  ];
  List<IconData> iconList = [
    Icons.home_outlined,
    Icons.search,
    Icons.favorite,
    Icons.person,
  ];
  List<String> pageTitleList = [
    'Home',
    'Search',
    'Favorites',
    'Profile',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.blackColor,
      appBar: AppBar(
        title: Text(
          pageTitleList[_bottomNavIndex],
          style: const TextStyle(
              color: Constants.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 22,
              fontFamily: 'Ms'),
        ),
        backgroundColor: Constants.blackColor,
        centerTitle: true,
        elevation: 0,
      ),
      body: IndexedStack(index: _bottomNavIndex, children: pages),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Constants.yellowColor,
          child: const Icon(Icons.share)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Constants.greyColor,
        activeColor: Constants.yellowColor,
        inactiveColor: Colors.grey,
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
      ),
    );
  }
}
