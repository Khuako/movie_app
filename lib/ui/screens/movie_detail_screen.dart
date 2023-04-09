import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/blocs/cubit/movie_detail_cubit.dart';
import 'package:movies_app/ui/screens/home_page_screen.dart';
import 'package:movies_app/ui/widgets/list_movie_widget.dart';

import '../../constants.dart';
import '../../models/movie_detail.dart';
import '../widgets/radial_percent_widget.dart';

class MovieDetailScreen extends StatefulWidget {
  String movieId;
  String sourceScreen;
  MovieDetailScreen({required this.movieId, required this.sourceScreen});
  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<MovieDetailCubit>().getMovieDetail(widget.movieId);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<MovieDetailCubit, MovieDetailState>(
      builder: ((context, state) {
        if (state is MovieDetailFailure) {
          return const Center(
            child: Text(
              'An error occured',
              style: TextStyle(color: Colors.white),
            ),
          );
        } else if (state is MovieDetailSuccess) {
          List<String> genres = [];
          int n = state.movieDetail.genreList!.length;
          for (int i = 0; i < n; i++) {
            genres.add(state.movieDetail.genreList![i].value!);
          }
          return Scaffold(
            backgroundColor: Constants.blackColor,
            body: SingleChildScrollView(
                child: Column(
              children: [
                _topPosterWidget(size, state.movieDetail),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: _movieNameWidget(state.movieDetail),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                  child: _summeryWidget(state.movieDetail),
                ),
                _scoreWidget(state.movieDetail),
                const SizedBox(
                  height: 30,
                ),
                _descrWidget(state.movieDetail),
                const SizedBox(
                  height: 30,
                ),
                _actorsWidget(state.movieDetail),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'More like this',
                  style: Constants.movieDetailTitle,
                ),
                const SizedBox(
                  height: 5,
                ),
                ListMovieWidget().listMovieWidget(context,
                    state.movieDetail.similars!, 0, widget.sourceScreen),
              ],
            )),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }),
    );
  }

  Stack _topPosterWidget(Size size, MovieDetail element) {
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * .5,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: CachedNetworkImage(
            imageUrl: element.image!,
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
            maxHeightDiskCache: 800,
            maxWidthDiskCache: 800,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),
        Positioned(
          top: 30,
          left: 10,
          child: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Constants.whiteColor,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/rootPage');
                },
              ),
              Text(
                'Back to ${widget.sourceScreen}',
                style: Constants.titleTextStyle,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: IconButton(
            icon: Icon(Icons.favorite_outline),
            color: Colors.white,
            onPressed: () {},
            iconSize: 30,
          ),
        ),
      ],
    );
  }

  Column _movieNameWidget(MovieDetail element) {
    return Column(
      children: [
        Text(
          element.title!,
          style: Constants.movieDetailTitle,
          maxLines: 2,
        ),
        Text('(${element.year!})', style: Constants.movieDetailYear),
      ],
    );
  }

  Widget _summeryWidget(MovieDetail element) {
    List<String> genres = [];
    int n = element.genreList!.length;
    for (int i = 0; i < n; i++) {
      if (i == element.genreList!.length - 1 || i == 3) {
        genres.add(element.genreList![i].value!);
        break;
      } else {
        genres.add(element.genreList![i].value!);
      }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          element.contentRating ?? 'PG-13',
          style: Constants.movieSummery,
        ),
        Text(
          '${element.releaseDate} (${element.countryList![0].value})',
          style: Constants.movieSummery,
        ),
        Text(
          genres.map((e) => e.toString()).toString().substring(
              1, genres.map((e) => e.toString()).toString().length - 1),
          style: Constants.movieSummery,
        )
      ],
    );
  }

  Row _scoreWidget(MovieDetail element) {
    double n = element.metacriticRating != null
        ? double.parse(element.metacriticRating!) / 100
        : double.parse(element.imDbRating!) / 10;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: RadialPercentWidget(
                  percent: n,
                  fillColor: const Color.fromARGB(255, 10, 23, 25),
                  lineColor: n > 0.5
                      ? const Color.fromARGB(255, 37, 203, 103)
                      : Colors.red,
                  freeColor: const Color.fromARGB(255, 25, 54, 31),
                  lineWidth: 3,
                  child: Text(
                    element.metacriticRating != null
                        ? element.metacriticRating!
                        : (double.parse(element.imDbRating!) * 100).toString(),
                    style: const TextStyle(
                        color: Colors.blue, fontSize: 16, fontFamily: 'Ms'),
                  )),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('User Score', style: Constants.movieScore),
            ),
          ],
        ),
        Container(
          color: Colors.grey,
          width: 1,
          height: 15,
        ),
        TextButton(
          onPressed: () {},
          child: const Row(
            children: [
              Icon(
                Icons.play_arrow,
                color: Colors.blue,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Play Trailer',
                style: Constants.movieScore,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Padding _descrWidget(MovieDetail element) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        element.plot!,
        style: const TextStyle(
            color: Colors.white, fontFamily: 'Ms', fontSize: 15),
      ),
    );
  }

  Widget _actorsWidget(MovieDetail element) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          const Text(
            'Actors',
            style: Constants.movieDetailTitle,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: element.actorList!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: CachedNetworkImage(
                        imageUrl: element.actorList![index].image ??
                            'https://sun6-21.userapi.com/s/v1/ig2/WQo3ZaP0xNQxBPqcpEq_eSkiKblznoWTr3l0PznJ5SDIZZxXHuI7LVwHqNnAeQWohZTDaNCvx7Xqvvr5KHTmuqdv.jpg?size=400x0&quality=96&crop=143,23,433,433&ava=1',
                        fit: BoxFit.cover,
                        maxHeightDiskCache: 200,
                        maxWidthDiskCache: 200,
                        placeholder: (context, url) => const Center(
                            child: CircularProgressIndicator(
                          color: Constants.yellowColor,
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      element.actorList![index].name!,
                      style:
                          TextStyle(color: Constants.whiteColor, fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
