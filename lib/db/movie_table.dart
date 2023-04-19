import 'package:drift/drift.dart';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:movies_app/models/movie_detail.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
part 'movie_table.g.dart';

class MovieTable extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get picture => text().nullable()();
  TextColumn get releaseYear => text()();
  TextColumn get imdbRating => text().nullable()();
}

@DriftDatabase(tables: [MovieTable])
class MyDatabase extends _$MyDatabase {
  MyDatabase._() : super(_openConnection());
  static final MyDatabase db = MyDatabase._();

  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
