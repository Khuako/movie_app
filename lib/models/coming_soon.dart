class ComingSoon {
  List<ComingSoonFilm>? items;
  String? errorMessage;

  ComingSoon({this.items, this.errorMessage});

  ComingSoon.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <ComingSoonFilm>[];
      json['items'].forEach((v) {
        items!.add(ComingSoonFilm.fromJson(v));
      });
    }
    errorMessage = json['errorMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    data['errorMessage'] = errorMessage;
    return data;
  }
}

class ComingSoonFilm {
  String? id;
  String? title;
  String? fullTitle;
  String? year;
  String? releaseState;
  String? image;
  Null runtimeMins;
  Null runtimeStr;
  Null plot;
  Null contentRating;
  Null imDbRating;
  Null imDbRatingCount;
  Null metacriticRating;
  String? genres;
  List<GenreList>? genreList;
  Null directors;
  List<DirectorList>? directorList;
  String? stars;
  List<StarList>? starList;

  ComingSoonFilm(
      {this.id,
      this.title,
      this.fullTitle,
      this.year,
      this.releaseState,
      this.image,
      this.runtimeMins,
      this.runtimeStr,
      this.plot,
      this.contentRating,
      this.imDbRating,
      this.imDbRatingCount,
      this.metacriticRating,
      this.genres,
      this.genreList,
      this.directors,
      this.directorList,
      this.stars,
      this.starList});

  ComingSoonFilm.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    fullTitle = json['fullTitle'];
    year = json['year'];
    releaseState = json['releaseState'];
    image = json['image'];
    runtimeMins = json['runtimeMins'];
    runtimeStr = json['runtimeStr'];
    plot = json['plot'];
    contentRating = json['contentRating'];
    imDbRating = json['imDbRating'];
    imDbRatingCount = json['imDbRatingCount'];
    metacriticRating = json['metacriticRating'];
    genres = json['genres'];
    if (json['genreList'] != null) {
      genreList = <GenreList>[];
      json['genreList'].forEach((v) {
        genreList!.add(GenreList.fromJson(v));
      });
    }
    directors = json['directors'];
    if (json['directorList'] != null) {
      directorList = <DirectorList>[];
      json['directorList'].forEach((v) {
        directorList!.add(DirectorList.fromJson(v));
      });
    }
    stars = json['stars'];
    if (json['starList'] != null) {
      starList = <StarList>[];
      json['starList'].forEach((v) {
        starList!.add(StarList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['fullTitle'] = fullTitle;
    data['year'] = year;
    data['releaseState'] = releaseState;
    data['image'] = image;
    data['runtimeMins'] = runtimeMins;
    data['runtimeStr'] = runtimeStr;
    data['plot'] = plot;
    data['contentRating'] = contentRating;
    data['imDbRating'] = imDbRating;
    data['imDbRatingCount'] = imDbRatingCount;
    data['metacriticRating'] = metacriticRating;
    data['genres'] = genres;
    if (genreList != null) {
      data['genreList'] = genreList!.map((v) => v.toJson()).toList();
    }
    data['directors'] = directors;
    if (directorList != null) {
      data['directorList'] = directorList!.map((v) => v.toJson()).toList();
    }
    data['stars'] = stars;
    if (starList != null) {
      data['starList'] = starList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GenreList {
  String? key;
  String? value;

  GenreList({this.key, this.value});

  GenreList.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['key'] = key;
    data['value'] = value;
    return data;
  }
}

class StarList {
  Null id;
  String? name;

  StarList({this.id, this.name});

  StarList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class DirectorList {
  Null id;
  String? name;

  DirectorList({this.id, this.name});

  DirectorList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
