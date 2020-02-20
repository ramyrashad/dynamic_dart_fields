import 'package:dynamic_dart_fields/features/account/domain/entities/_entities.dart';
import 'package:meta/meta.dart';

class AccountMapper extends Account {
  AccountMapper({
    @required String username,
    @required String password,
  }) : super(username: username, password: password);

  factory AccountMapper.fromJson(Map<String, dynamic> json) {
    return AccountMapper(
      username: json['username'],
      password: json['password'],
    );
  }

  factory AccountMapper.fromEntity(Account entity) {
    return AccountMapper(
      username: entity.username,
      password: entity.password,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'grant_type': 'password'
    };
  }
}
