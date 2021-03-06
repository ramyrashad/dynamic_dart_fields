import 'package:dynamic_dart_fields/features/account/domain/entities/_entities.dart';
import 'package:meta/meta.dart';

class AccountBindingModel extends Account {
  AccountBindingModel({
    @required String username,
    @required String password,
  }) : super(username: username, password: password);

  factory AccountBindingModel.fromJson(Map<String, dynamic> json) {
    return AccountBindingModel(
      username: json['username'],
      password: json['password'],
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
