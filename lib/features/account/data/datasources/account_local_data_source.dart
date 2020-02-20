import 'package:dynamic_dart_fields/features/account/domain/entities/_entities.dart';

abstract class IAccountLocalDataSource {
  /// Throws a [CacheException] for all error codes.
  Future<User> login(Account model);

  /// Throws a [CacheException] for all error codes.
  Future<Account> register(Account model);

  /// Throws a [CacheException] for all error codes.
  bool cachelogin(User model);
}

class AccountLocalDataSource extends IAccountLocalDataSource {
  @override
  bool cachelogin(User model) {
    // TODO: implement cachelogin
    return null;
  }

  @override
  Future<User> login(Account model) {
    // TODO: implement login
    return null;
  }

  @override
  Future<Account> register(Account model) {
    // TODO: implement register
    return null;
  }
}
