// import 'movie_detail.dart';

// class MovieTableData {
//   String id;
//   String title;
//   String? picture;
//   String releaseYear;
//   String? imdbRating;
//   MovieTableData(
//       {required this.id,
//       required this.title,
//       this.picture,
//       required this.releaseYear,
//       this.imdbRating});
// }

// extension MovieDetailToDatabase on MovieDetail {
//   MovieTableData toDatabase() {
//     return MovieTableData(
//         id: id!,
//         title: title!,
//         picture: image,
//         releaseYear: year!,
//         imdbRating: imDbRating);
//   }
// }

// extension MovieTableToDomain on MovieTableData {
//   MovieDetail toDomain() {
//     return MovieDetail(
//         id: id,
//         title: title,
//         image: picture,
//         year: releaseYear,
//         imDbRating: imdbRating);
//   }
// }
