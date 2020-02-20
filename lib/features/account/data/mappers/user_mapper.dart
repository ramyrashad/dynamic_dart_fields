import 'package:dynamic_dart_fields/features/account/domain/entities/_entities.dart';
import 'package:meta/meta.dart';

class UserMapper extends User {
  UserMapper(
      {@required accessToken,
      @required tokenType,
      @required expiresIn,
      @required refreshToken,
      @required userName})
      : super(
            accessToken: accessToken,
            tokenType: tokenType,
            expiresIn: expiresIn,
            refreshToken: refreshToken,
            userName: userName);

  factory UserMapper.fromJson(Map<String, dynamic> json) {
    return UserMapper(
        accessToken: json['access_token'],
        tokenType: json['token_type'],
        expiresIn: json['expires_in'],
        refreshToken: json['refresh_token'],
        userName: json['userName']);
  }

  factory UserMapper.fromEntity(User entity) {
    return UserMapper(
        accessToken: entity.accessToken,
        tokenType: entity.tokenType,
        expiresIn: entity.expiresIn,
        refreshToken: entity.refreshToken,
        userName: entity.userName);
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken,
      'token_type': tokenType,
      'expires_in': expiresIn,
      'refresh_token': refreshToken,
      'userName': userName
    };
  }
}
