import 'package:dio/dio.dart';
import 'package:dynamic_dart_fields/core/_refrance/com_refrance.dart';
import 'package:dynamic_dart_fields/core/_refrance/ex_refrance.dart';
import 'package:dynamic_dart_fields/features/account/data/mappers/_mappers.dart';
import 'package:dynamic_dart_fields/features/account/domain/entities/_entities.dart';
import 'package:meta/meta.dart';

abstract class IAccountRemoteDataSource {
  /// Throws a [ServerException] for all error codes.
  Future<User> login(Account entity);

  /// Throws a [ServerException] for all error codes.
  Future<Account> register(Account entity);
}

class AccountRemoteDataSource implements IAccountRemoteDataSource {
  final DioService dioService;

  AccountRemoteDataSource({@required this.dioService});

  @override
  Future<User> login(Account entity) async {
    Response response = await this
        .dioService
        .dio
        .post('token', data: AccountMapper.fromEntity(entity));
    return _getResponseData(response);
  }

  @override
  Future<Account> register(Account entity) async {
    Response response = await this
        .dioService
        .dio
        .post<Account>('token', data: AccountMapper.fromEntity(entity));
    return response.data;
  }

  User _getResponseData(Response response) {
    if (response.statusCode == 200)
      return UserMapper.fromJson(response.data);
    else
      throw ServerException();
  }
}
