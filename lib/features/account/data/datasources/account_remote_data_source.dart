import 'package:dio/dio.dart';
import 'package:dynamic_dart_fields/core/_refrance/com_refrance.dart';
import 'package:dynamic_dart_fields/core/_refrance/ex_refrance.dart';
import 'package:dynamic_dart_fields/features/account/data/models/bindings/_bindings.dart';
import 'package:dynamic_dart_fields/features/account/data/models/views/_views.dart';
import 'package:meta/meta.dart';

abstract class IAccountRemoteDataSource {
  /// Throws a [ServerException] for all error codes.
  Future<UserViewModel> login(AccountBindingModel model);

  /// Throws a [ServerException] for all error codes.
  Future<AccountBindingModel> register(AccountBindingModel model);
}

class AccountRemoteDataSource implements IAccountRemoteDataSource {
  final DioService dioService;

  AccountRemoteDataSource({@required this.dioService});

  @override
  Future<UserViewModel> login(AccountBindingModel model) async {
    Response response =
        await this.dioService.dio.post('token', data: model.toJson());
    return _getResponseData(response);
  }

  @override
  Future<AccountBindingModel> register(AccountBindingModel model) async {
    Response response = await this
        .dioService
        .dio
        .post<AccountBindingModel>('token', data: model.toJson());
    return response.data;
  }

  UserViewModel _getResponseData(Response response) {
    if (response.statusCode == 200)
      return UserViewModel.fromJson(response.data);
    else
      throw ServerException();
  }
}
