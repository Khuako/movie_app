import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RecommendedWidget extends StatefulWidget {
  const RecommendedWidget({super.key});

  @override
  State<RecommendedWidget> createState() => _RecommendedWidgetState();
}

class _RecommendedWidgetState extends State<RecommendedWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 500,
              child: CachedNetworkImage(
                  imageUrl:
                      "https://m.media-amazon.com/images/M/MV5BOWUxNWQ1NzAtN2ZjYi00MjBhLWFjZWUtMjFkZmYxMjQ1NzU5XkEyXkFqcGdeQXVyMTI5NTI0MDQw._V1_Ratio1.0000_AL_.jpg"),
            ),
            Container(
              width: 500,
              height: 500,
              child: CachedNetworkImage(
                  imageUrl:
                      "https://m.media-amazon.com/images/M/MV5BOWUxNWQ1NzAtN2ZjYi00MjBhLWFjZWUtMjFkZmYxMjQ1NzU5XkEyXkFqcGdeQXVyMTI5NTI0MDQw._V1_Ratio1.0000_AL_.jpg"),
            ),
            Container(
              width: 500,
              height: 500,
              child: CachedNetworkImage(
                  imageUrl:
                      "https://m.media-amazon.com/images/M/MV5BOWUxNWQ1NzAtN2ZjYi00MjBhLWFjZWUtMjFkZmYxMjQ1NzU5XkEyXkFqcGdeQXVyMTI5NTI0MDQw._V1_Ratio1.0000_AL_.jpg"),
            ),
            Container(
              width: 500,
              height: 500,
              child: CachedNetworkImage(
                  imageUrl:
                      "https://m.media-amazon.com/images/M/MV5BOWUxNWQ1NzAtN2ZjYi00MjBhLWFjZWUtMjFkZmYxMjQ1NzU5XkEyXkFqcGdeQXVyMTI5NTI0MDQw._V1_Ratio1.0000_AL_.jpg"),
            ),
            Container(
              width: 500,
              height: 500,
              child: CachedNetworkImage(
                  imageUrl:
                      "https://m.media-amazon.com/images/M/MV5BOWUxNWQ1NzAtN2ZjYi00MjBhLWFjZWUtMjFkZmYxMjQ1NzU5XkEyXkFqcGdeQXVyMTI5NTI0MDQw._V1_Ratio1.0000_AL_.jpg"),
            ),
            Container(
              width: 500,
              height: 500,
              child: CachedNetworkImage(
                  imageUrl:
                      "https://m.media-amazon.com/images/M/MV5BOWUxNWQ1NzAtN2ZjYi00MjBhLWFjZWUtMjFkZmYxMjQ1NzU5XkEyXkFqcGdeQXVyMTI5NTI0MDQw._V1_Ratio1.0000_AL_.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
