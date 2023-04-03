import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/blocs/box_office_bloc.dart';
import 'package:movies_app/blocs/coming_soon_bloc.dart';
import 'package:movies_app/blocs/most_popular_tv_bloc.dart';
import 'package:movies_app/blocs/movies_bloc.dart';
import 'package:movies_app/blocs/movies_popular.dart';
import 'package:movies_app/constants.dart';
import 'package:movies_app/models/most_popular_tvs.dart';

import '../widgets/home_page_widgets/category_movie_list_widget.dart';
import '../widgets/home_page_widgets/recommended_widget.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.blackColor,
      body: SingleChildScrollView(
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
            CategoryMovieListWidget(index: _selectedIndex),
            SizedBox(
              height: 15,
            ),
            RecommendedWidget(),
          ],
        ),
      ),
    );
  }
}
