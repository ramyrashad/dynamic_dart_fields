// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class dbUser extends DataClass implements Insertable<dbUser> {
  final int id;
  final String name;
  final String username;
  dbUser({@required this.id, @required this.name, @required this.username});
  factory dbUser.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return dbUser(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      username: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}username']),
    );
  }
  factory dbUser.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return dbUser(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      username: serializer.fromJson<String>(json['username']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'username': serializer.toJson<String>(username),
    };
  }

  @override
  DBUsersCompanion createCompanion(bool nullToAbsent) {
    return DBUsersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      username: username == null && nullToAbsent
          ? const Value.absent()
          : Value(username),
    );
  }

  dbUser copyWith({int id, String name, String username}) => dbUser(
        id: id ?? this.id,
        name: name ?? this.name,
        username: username ?? this.username,
      );
  @override
  String toString() {
    return (StringBuffer('dbUser(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('username: $username')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(name.hashCode, username.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is dbUser &&
          other.id == this.id &&
          other.name == this.name &&
          other.username == this.username);
}

class DBUsersCompanion extends UpdateCompanion<dbUser> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> username;
  const DBUsersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.username = const Value.absent(),
  });
  DBUsersCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    @required String username,
  })  : name = Value(name),
        username = Value(username);
  DBUsersCompanion copyWith(
      {Value<int> id, Value<String> name, Value<String> username}) {
    return DBUsersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
    );
  }
}

class $DBUsersTable extends DBUsers with TableInfo<$DBUsersTable, dbUser> {
  final GeneratedDatabase _db;
  final String _alias;
  $DBUsersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  GeneratedTextColumn _username;
  @override
  GeneratedTextColumn get username => _username ??= _constructUsername();
  GeneratedTextColumn _constructUsername() {
    return GeneratedTextColumn('username', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, username];
  @override
  $DBUsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'd_b_users';
  @override
  final String actualTableName = 'd_b_users';
  @override
  VerificationContext validateIntegrity(DBUsersCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (d.username.present) {
      context.handle(_usernameMeta,
          username.isAcceptableValue(d.username.value, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  dbUser map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return dbUser.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(DBUsersCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.username.present) {
      map['username'] = Variable<String, StringType>(d.username.value);
    }
    return map;
  }

  @override
  $DBUsersTable createAlias(String alias) {
    return $DBUsersTable(_db, alias);
  }
}

class DBFavorit extends DataClass implements Insertable<DBFavorit> {
  final int id;
  final int serviseId;
  final String username;
  DBFavorit({@required this.id, this.serviseId, @required this.username});
  factory DBFavorit.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return DBFavorit(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      serviseId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}servise_id']),
      username: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}username']),
    );
  }
  factory DBFavorit.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return DBFavorit(
      id: serializer.fromJson<int>(json['id']),
      serviseId: serializer.fromJson<int>(json['serviseId']),
      username: serializer.fromJson<String>(json['username']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'serviseId': serializer.toJson<int>(serviseId),
      'username': serializer.toJson<String>(username),
    };
  }

  @override
  DBFavoritsCompanion createCompanion(bool nullToAbsent) {
    return DBFavoritsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      serviseId: serviseId == null && nullToAbsent
          ? const Value.absent()
          : Value(serviseId),
      username: username == null && nullToAbsent
          ? const Value.absent()
          : Value(username),
    );
  }

  DBFavorit copyWith({int id, int serviseId, String username}) => DBFavorit(
        id: id ?? this.id,
        serviseId: serviseId ?? this.serviseId,
        username: username ?? this.username,
      );
  @override
  String toString() {
    return (StringBuffer('DBFavorit(')
          ..write('id: $id, ')
          ..write('serviseId: $serviseId, ')
          ..write('username: $username')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(serviseId.hashCode, username.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is DBFavorit &&
          other.id == this.id &&
          other.serviseId == this.serviseId &&
          other.username == this.username);
}

class DBFavoritsCompanion extends UpdateCompanion<DBFavorit> {
  final Value<int> id;
  final Value<int> serviseId;
  final Value<String> username;
  const DBFavoritsCompanion({
    this.id = const Value.absent(),
    this.serviseId = const Value.absent(),
    this.username = const Value.absent(),
  });
  DBFavoritsCompanion.insert({
    this.id = const Value.absent(),
    this.serviseId = const Value.absent(),
    @required String username,
  }) : username = Value(username);
  DBFavoritsCompanion copyWith(
      {Value<int> id, Value<int> serviseId, Value<String> username}) {
    return DBFavoritsCompanion(
      id: id ?? this.id,
      serviseId: serviseId ?? this.serviseId,
      username: username ?? this.username,
    );
  }
}

class $DBFavoritsTable extends DBFavorits
    with TableInfo<$DBFavoritsTable, DBFavorit> {
  final GeneratedDatabase _db;
  final String _alias;
  $DBFavoritsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _serviseIdMeta = const VerificationMeta('serviseId');
  GeneratedIntColumn _serviseId;
  @override
  GeneratedIntColumn get serviseId => _serviseId ??= _constructServiseId();
  GeneratedIntColumn _constructServiseId() {
    return GeneratedIntColumn(
      'servise_id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  GeneratedTextColumn _username;
  @override
  GeneratedTextColumn get username => _username ??= _constructUsername();
  GeneratedTextColumn _constructUsername() {
    return GeneratedTextColumn('username', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  @override
  List<GeneratedColumn> get $columns => [id, serviseId, username];
  @override
  $DBFavoritsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'd_b_favorits';
  @override
  final String actualTableName = 'd_b_favorits';
  @override
  VerificationContext validateIntegrity(DBFavoritsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.serviseId.present) {
      context.handle(_serviseIdMeta,
          serviseId.isAcceptableValue(d.serviseId.value, _serviseIdMeta));
    }
    if (d.username.present) {
      context.handle(_usernameMeta,
          username.isAcceptableValue(d.username.value, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DBFavorit map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return DBFavorit.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(DBFavoritsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.serviseId.present) {
      map['servise_id'] = Variable<int, IntType>(d.serviseId.value);
    }
    if (d.username.present) {
      map['username'] = Variable<String, StringType>(d.username.value);
    }
    return map;
  }

  @override
  $DBFavoritsTable createAlias(String alias) {
    return $DBFavoritsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $DBUsersTable _dBUsers;
  $DBUsersTable get dBUsers => _dBUsers ??= $DBUsersTable(this);
  $DBFavoritsTable _dBFavorits;
  $DBFavoritsTable get dBFavorits => _dBFavorits ??= $DBFavoritsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [dBUsers, dBFavorits];
}
