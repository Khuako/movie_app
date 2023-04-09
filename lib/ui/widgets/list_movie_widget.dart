import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../screens/movie_detail_screen.dart';

class ListMovieWidget {
  void _clickOnMovie(
      String movieId, BuildContext context, String sourceScreen) {
    Navigator.of(context).pushReplacementNamed('/movie_details',
        arguments: {'movieId': movieId, 'sourceScreen': sourceScreen});
  }

  SizedBox listMovieWidget(
      BuildContext context, List movieList, int index, String sourceScreen) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .4,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, indexOf) {
          return InkWell(
            onTap: () =>
                _clickOnMovie(movieList[indexOf].id, context, sourceScreen),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * .55,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width * .55,
                        height: MediaQuery.sizeOf(context).height * .33,
                        child: CachedNetworkImage(
                          imageUrl: movieList[indexOf].image ??
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
                    const SizedBox(
                      height: 4,
                    ),
                    if (index == 0 || index == 3)
                      Text(
                        movieList[indexOf].title ?? '123',
                        style: Constants.titleTextStyle,
                        maxLines: 2,
                      ),
                    if (index == 1)
                      Column(
                        children: [
                          Text(
                            movieList[indexOf].title! ?? '123',
                            maxLines: 2,
                            style: const TextStyle(
                                fontSize: 12,
                                color: Constants.whiteColor,
                                fontFamily: 'Ms',
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            movieList[indexOf].releaseState! ?? '123',
                            maxLines: 2,
                            style: const TextStyle(
                                fontSize: 12,
                                color: Constants.whiteColor,
                                fontFamily: 'Ms'),
                          ),
                        ],
                      ),
                    if (index == 2)
                      Column(
                        children: [
                          Text(
                            movieList[indexOf].title! ?? '123',
                            maxLines: 2,
                            style: const TextStyle(
                                fontSize: 12,
                                color: Constants.whiteColor,
                                fontFamily: 'Ms',
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            movieList[indexOf].weekend! ?? '123',
                            maxLines: 2,
                            style: const TextStyle(
                                fontSize: 12,
                                color: Constants.yellowColor,
                                fontFamily: 'Ms'),
                          ),
                        ],
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
