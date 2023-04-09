import 'package:flutter/material.dart';

class Constants {
  static const Color whiteColor = Color(0xFFEEF1F4);
  static const Color blackColor = Color.fromRGBO(23, 25, 26, 1);
  static const Color yellowColor = Color(0xFFF8D458);
  static const Color greyColor = Color.fromRGBO(36, 37, 41, 1); //36 37 41
  static const TextStyle titleTextStyle = TextStyle(
      fontSize: 12,
      color: Constants.whiteColor,
      fontFamily: 'Ms',
      fontWeight: FontWeight.w900);
  static const TextStyle titleTextStylePink = TextStyle(
      fontSize: 12,
      color: Colors.pink,
      fontFamily: 'Ms',
      fontWeight: FontWeight.w900);
  static const TextStyle genreTextStyle =
      TextStyle(color: Colors.grey, fontFamily: 'Ms', fontSize: 14);
  static const TextStyle movieDetailTitle = TextStyle(
      fontSize: 20,
      color: Constants.whiteColor,
      fontFamily: 'Ms',
      fontWeight: FontWeight.w900);
  static const TextStyle movieDetailYear = TextStyle(
      fontSize: 15,
      color: Constants.whiteColor,
      fontFamily: 'Ms',
      fontWeight: FontWeight.w600);
  static const TextStyle movieSummery = TextStyle(
      color: Colors.grey,
      fontFamily: 'Ms',
      fontSize: 16,
      fontWeight: FontWeight.w400);
  static const TextStyle movieScore = TextStyle(
      color: Constants.yellowColor,
      fontFamily: 'Ms',
      fontSize: 16,
      fontWeight: FontWeight.w600);
}
