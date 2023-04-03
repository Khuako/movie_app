import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/blocs/box_office_bloc.dart';
import 'package:movies_app/blocs/coming_soon_bloc.dart';
import 'package:movies_app/blocs/most_popular_tv_bloc.dart';
import 'package:movies_app/blocs/movies_bloc.dart';
import 'package:movies_app/blocs/movies_popular.dart';
import 'package:movies_app/constants.dart';
import 'package:movies_app/models/most_popular_tvs.dart';

class CategoryMovieListWidget extends StatefulWidget {
  int index;
  CategoryMovieListWidget({required this.index});

  @override
  State<CategoryMovieListWidget> createState() =>
      _CategoryMovieListWidgetState();
}

class _CategoryMovieListWidgetState extends State<CategoryMovieListWidget> {
  final blocPopular = MoviesPopularBloc();
  final blocPopularTv = MostPopularTvBloc();
  final blocComingSoon = ComingSoonBloc();
  final blocBoxOffice = BoxOfficeBloc();
  @override
  Widget build(BuildContext context) {
    blocPopularTv.fetchMostPopularTvList();
    blocPopular.fetchMostPopularMovies();
    blocComingSoon.fetchComingSoon();
    blocBoxOffice.fetchBoxOffice();
    if (widget.index == 0) {
      return StreamBuilder(
        stream: blocPopular.allPopularMovies,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              height: MediaQuery.sizeOf(context).height * .45,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, indexOf) {
                  return Padding(
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
                                imageUrl: snapshot
                                        .data!.items?[indexOf].image ??
                                    "https://m.media-amazon.com/images/M/MV5BZGUzYTI3M2EtZmM0Yy00NGUyLWI4ODEtN2Q3ZGJlYzhhZjU3XkEyXkFqcGdeQXVyNTM0OTY1OQ@@._V1_Ratio0.6716_AL_.jpg",
                                maxWidthDiskCache: 400,
                                maxHeightDiskCache: 400,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            snapshot.data?.items![indexOf].fullTitle! ?? '123',
                            style: const TextStyle(
                                fontSize: 12,
                                color: Constants.whiteColor,
                                fontFamily: 'Ms',
                                fontWeight: FontWeight.w900),
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else if (snapshot.hasError) {
            return Text('Error');
          } else {
            return CircularProgressIndicator();
          }
        },
      );
    } else if (widget.index == 1) {
      return StreamBuilder(
        stream: blocComingSoon.allComingSoon,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              height: MediaQuery.sizeOf(context).height * .45,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, indexOf) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * .55,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                              height: MediaQuery.sizeOf(context).height * .33,
                              width: MediaQuery.sizeOf(context).width * .55,
                              child: CachedNetworkImage(
                                imageUrl: snapshot
                                        .data!.items?[indexOf].image ??
                                    "https://m.media-amazon.com/images/M/MV5BZGUzYTI3M2EtZmM0Yy00NGUyLWI4ODEtN2Q3ZGJlYzhhZjU3XkEyXkFqcGdeQXVyNTM0OTY1OQ@@._V1_Ratio0.6716_AL_.jpg",
                                maxWidthDiskCache: 400,
                                maxHeightDiskCache: 400,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Column(
                            children: [
                              Text(
                                snapshot.data?.items![indexOf].title! ?? '123',
                                maxLines: 2,
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Constants.whiteColor,
                                    fontFamily: 'Ms',
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                snapshot.data?.items![indexOf].releaseState! ??
                                    '123',
                                maxLines: 2,
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Constants.whiteColor,
                                    fontFamily: 'Ms'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else if (snapshot.hasError) {
            return Text('Error');
          } else {
            return CircularProgressIndicator();
          }
        },
      );
    } else if (widget.index == 2) {
      return StreamBuilder(
        stream: blocBoxOffice.allboxOffice,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              height: MediaQuery.sizeOf(context).height * .45,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, indexOf) {
                  return Padding(
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
                                imageUrl: snapshot
                                        .data!.items?[indexOf].image ??
                                    "https://m.media-amazon.com/images/M/MV5BZGUzYTI3M2EtZmM0Yy00NGUyLWI4ODEtN2Q3ZGJlYzhhZjU3XkEyXkFqcGdeQXVyNTM0OTY1OQ@@._V1_Ratio0.6716_AL_.jpg",
                                maxWidthDiskCache: 400,
                                maxHeightDiskCache: 400,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Column(
                            children: [
                              Text(
                                snapshot.data?.items![indexOf].title! ?? '123',
                                maxLines: 2,
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Constants.whiteColor,
                                    fontFamily: 'Ms',
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                snapshot.data?.items![indexOf].weekend! ??
                                    '123',
                                maxLines: 2,
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Constants.yellowColor,
                                    fontFamily: 'Ms'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else if (snapshot.hasError) {
            return Text('Error');
          } else {
            return CircularProgressIndicator();
          }
        },
      );
    } else {
      return StreamBuilder(
        stream: blocPopularTv.allPopularTvs,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              height: MediaQuery.sizeOf(context).height * .45,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, indexOf) {
                  return Padding(
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
                                imageUrl: snapshot
                                        .data!.items?[indexOf].image ??
                                    "https://m.media-amazon.com/images/M/MV5BZGUzYTI3M2EtZmM0Yy00NGUyLWI4ODEtN2Q3ZGJlYzhhZjU3XkEyXkFqcGdeQXVyNTM0OTY1OQ@@._V1_Ratio0.6716_AL_.jpg",
                                maxWidthDiskCache: 400,
                                maxHeightDiskCache: 400,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            snapshot.data?.items![indexOf].fullTitle! ?? '123',
                            style: const TextStyle(
                                fontSize: 12,
                                color: Constants.whiteColor,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Ms'),
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else if (snapshot.hasError) {
            return Text('Error');
          } else {
            return CircularProgressIndicator();
          }
        },
      );
    }
  }
}
