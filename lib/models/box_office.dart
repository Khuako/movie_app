class BoxOffice {
  List<BoxOfficeFilm>? items;
  String? errorMessage;

  BoxOffice({this.items, this.errorMessage});

  BoxOffice.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <BoxOfficeFilm>[];
      json['items'].forEach((v) {
        items!.add(new BoxOfficeFilm.fromJson(v));
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

class BoxOfficeFilm {
  String? id;
  String? rank;
  String? title;
  String? image;
  String? weekend;
  String? gross;
  String? weeks;

  BoxOfficeFilm(
      {this.id,
      this.rank,
      this.title,
      this.image,
      this.weekend,
      this.gross,
      this.weeks});

  BoxOfficeFilm.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    rank = json['rank'];
    title = json['title'];
    image = json['image'];
    weekend = json['weekend'];
    gross = json['gross'];
    weeks = json['weeks'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['rank'] = rank;
    data['title'] = title;
    data['image'] = image;
    data['weekend'] = weekend;
    data['gross'] = gross;
    data['weeks'] = weeks;
    return data;
  }
}
