// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_table.dart';

// ignore_for_file: type=lint
class $MovieTableTable extends MovieTable
    with TableInfo<$MovieTableTable, MovieTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MovieTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pictureMeta =
      const VerificationMeta('picture');
  @override
  late final GeneratedColumn<String> picture = GeneratedColumn<String>(
      'picture', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _releaseYearMeta =
      const VerificationMeta('releaseYear');
  @override
  late final GeneratedColumn<String> releaseYear = GeneratedColumn<String>(
      'release_year', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imdbRatingMeta =
      const VerificationMeta('imdbRating');
  @override
  late final GeneratedColumn<String> imdbRating = GeneratedColumn<String>(
      'imdb_rating', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, picture, releaseYear, imdbRating];
  @override
  String get aliasedName => _alias ?? 'movie_table';
  @override
  String get actualTableName => 'movie_table';
  @override
  VerificationContext validateIntegrity(Insertable<MovieTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('picture')) {
      context.handle(_pictureMeta,
          picture.isAcceptableOrUnknown(data['picture']!, _pictureMeta));
    }
    if (data.containsKey('release_year')) {
      context.handle(
          _releaseYearMeta,
          releaseYear.isAcceptableOrUnknown(
              data['release_year']!, _releaseYearMeta));
    } else if (isInserting) {
      context.missing(_releaseYearMeta);
    }
    if (data.containsKey('imdb_rating')) {
      context.handle(
          _imdbRatingMeta,
          imdbRating.isAcceptableOrUnknown(
              data['imdb_rating']!, _imdbRatingMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  MovieTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MovieTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      picture: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}picture']),
      releaseYear: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}release_year'])!,
      imdbRating: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}imdb_rating']),
    );
  }

  @override
  $MovieTableTable createAlias(String alias) {
    return $MovieTableTable(attachedDatabase, alias);
  }
}

class MovieTableData extends DataClass implements Insertable<MovieTableData> {
  final String id;
  final String title;
  final String? picture;
  final String releaseYear;
  final String? imdbRating;
  const MovieTableData(
      {required this.id,
      required this.title,
      this.picture,
      required this.releaseYear,
      this.imdbRating});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || picture != null) {
      map['picture'] = Variable<String>(picture);
    }
    map['release_year'] = Variable<String>(releaseYear);
    if (!nullToAbsent || imdbRating != null) {
      map['imdb_rating'] = Variable<String>(imdbRating);
    }
    return map;
  }

  MovieTableCompanion toCompanion(bool nullToAbsent) {
    return MovieTableCompanion(
      id: Value(id),
      title: Value(title),
      picture: picture == null && nullToAbsent
          ? const Value.absent()
          : Value(picture),
      releaseYear: Value(releaseYear),
      imdbRating: imdbRating == null && nullToAbsent
          ? const Value.absent()
          : Value(imdbRating),
    );
  }

  factory MovieTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MovieTableData(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      picture: serializer.fromJson<String?>(json['picture']),
      releaseYear: serializer.fromJson<String>(json['releaseYear']),
      imdbRating: serializer.fromJson<String?>(json['imdbRating']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'picture': serializer.toJson<String?>(picture),
      'releaseYear': serializer.toJson<String>(releaseYear),
      'imdbRating': serializer.toJson<String?>(imdbRating),
    };
  }

  MovieTableData copyWith(
          {String? id,
          String? title,
          Value<String?> picture = const Value.absent(),
          String? releaseYear,
          Value<String?> imdbRating = const Value.absent()}) =>
      MovieTableData(
        id: id ?? this.id,
        title: title ?? this.title,
        picture: picture.present ? picture.value : this.picture,
        releaseYear: releaseYear ?? this.releaseYear,
        imdbRating: imdbRating.present ? imdbRating.value : this.imdbRating,
      );
  @override
  String toString() {
    return (StringBuffer('MovieTableData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('picture: $picture, ')
          ..write('releaseYear: $releaseYear, ')
          ..write('imdbRating: $imdbRating')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, picture, releaseYear, imdbRating);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovieTableData &&
          other.id == this.id &&
          other.title == this.title &&
          other.picture == this.picture &&
          other.releaseYear == this.releaseYear &&
          other.imdbRating == this.imdbRating);
}

class MovieTableCompanion extends UpdateCompanion<MovieTableData> {
  final Value<String> id;
  final Value<String> title;
  final Value<String?> picture;
  final Value<String> releaseYear;
  final Value<String?> imdbRating;
  final Value<int> rowid;
  const MovieTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.picture = const Value.absent(),
    this.releaseYear = const Value.absent(),
    this.imdbRating = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MovieTableCompanion.insert({
    required String id,
    required String title,
    this.picture = const Value.absent(),
    required String releaseYear,
    this.imdbRating = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        title = Value(title),
        releaseYear = Value(releaseYear);
  static Insertable<MovieTableData> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? picture,
    Expression<String>? releaseYear,
    Expression<String>? imdbRating,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (picture != null) 'picture': picture,
      if (releaseYear != null) 'release_year': releaseYear,
      if (imdbRating != null) 'imdb_rating': imdbRating,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MovieTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? title,
      Value<String?>? picture,
      Value<String>? releaseYear,
      Value<String?>? imdbRating,
      Value<int>? rowid}) {
    return MovieTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      picture: picture ?? this.picture,
      releaseYear: releaseYear ?? this.releaseYear,
      imdbRating: imdbRating ?? this.imdbRating,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (picture.present) {
      map['picture'] = Variable<String>(picture.value);
    }
    if (releaseYear.present) {
      map['release_year'] = Variable<String>(releaseYear.value);
    }
    if (imdbRating.present) {
      map['imdb_rating'] = Variable<String>(imdbRating.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MovieTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('picture: $picture, ')
          ..write('releaseYear: $releaseYear, ')
          ..write('imdbRating: $imdbRating, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $MovieTableTable movieTable = $MovieTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [movieTable];
}
