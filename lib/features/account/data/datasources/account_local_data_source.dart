import 'package:dynamic_dart_fields/features/account/data/models/bindings/_bindings.dart';
import 'package:dynamic_dart_fields/features/account/data/models/views/_views.dart';

abstract class IAccountLocalDataSource {
  /// Throws a [CacheException] for all error codes.
  Future<UserViewModel> login(AccountBindingModel model);

  /// Throws a [CacheException] for all error codes.
  Future<AccountBindingModel> register(AccountBindingModel model);

  /// Throws a [CacheException] for all error codes.
  bool cachelogin(UserViewModel model);
}

class AccountLocalDataSource extends IAccountLocalDataSource {
  @override
  bool cachelogin(UserViewModel model) {
    // TODO: implement cachelogin
    return null;
  }

  @override
  Future<UserViewModel> login(AccountBindingModel model) {
    // TODO: implement login
    return null;
  }

  @override
  Future<AccountBindingModel> register(AccountBindingModel model) {
    // TODO: implement register
    return null;
  }
}
