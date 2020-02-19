import 'package:moor/moor.dart';

@DataClassName("DBFavorit")
class DBFavorits extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get serviseId => integer().nullable()();
  TextColumn get username => text().withLength(min: 1, max: 50)();
}
