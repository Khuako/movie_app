import 'dart:convert';

import 'package:http/http.dart';
import 'package:movies_app/jsonfiles/json_box_office.dart';
import 'package:movies_app/jsonfiles/json_comin_soon.dart';
import 'package:movies_app/jsonfiles/json_in_theaters.dart';
import 'package:movies_app/jsonfiles/json_most_popular.dart';
import 'package:movies_app/jsonfiles/json_most_popular_TVs.dart';
import 'package:movies_app/jsonfiles/json_recommended.dart';
import 'package:movies_app/models/box_office.dart';
import 'package:movies_app/models/coming_soon.dart';
import 'package:movies_app/models/films_list.dart';
import 'package:movies_app/models/most_popular_movies.dart';
import 'package:movies_app/models/most_popular_tvs.dart';
import 'package:movies_app/models/movie_detail.dart';
import 'package:movies_app/models/recommended_movies.dart';

import '../models/search_title.dart';

class MovieApiProvider {
  Client client = Client();
  final apiKey = "/k_cfscy5r0/";
  final baseUrl = "https://imdb-api.com/en/API/";
  //https://imdb-api.com/en/API/ComingSoon/k_cfscy5r0
  Future<FilmsList> fetchMovieList() async {
    // print('entered');
    // final response = await client
    //     .get(Uri.parse("https://imdb-api.com/en/API/InTheaters/$apiKey"));
    // print(response.body.toString());
    return FilmsList.fromJson(json.decode(jsonTheaters));
  }

  Future<MostPopularMovies> fetchMostPopularMoviesList() async {
    return MostPopularMovies.fromJson(json.decode(jsonMostPopularMovies));
  }

  Future<MostPopularTvs> fetchMostPopularTVList() async {
    return MostPopularTvs.fromJson(json.decode(jsonMostPopularTVs));
  }

  Future<BoxOffice> fetchBoxOffice() async {
    return BoxOffice.fromJson(json.decode(jsonBoxOffice));
  }

  Future<ComingSoon> fetchComingSoon() async {
    // final response = await client
    //     .get(Uri.parse("https://imdb-api.com/en/API/ComingSoon/k_cfscy5r0"));
    return ComingSoon.fromJson(json.decode(jsonComingSoon));
  }

  Future<RecommendedMovies> fetchRecommendedMovies() async {
    // final response = await client
    //     .get(Uri.parse('https://imdb-api.com/en/API/Top250Movies/k_cfscy5r0'));
    return RecommendedMovies.fromJson(json.decode(jsonTheaters));
  }

  Future<MovieDetail> fetchMovieDetail(String movieId) async {
    final response =
        await client.get(Uri.parse(baseUrl + 'Title' + apiKey + movieId));
    return MovieDetail.fromJson(json.decode(response.body));
  }

  Future<SearchTitle> fetchSearchTitle(String query) async {
    final response =
        await client.get(Uri.parse(baseUrl + 'SearchTitle' + apiKey + query));
    return SearchTitle.fromJson(json.decode(response.body));
  }
}
