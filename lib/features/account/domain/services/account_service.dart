import 'package:dartz/dartz.dart';
import 'package:dynamic_dart_fields/core/_refrance/ex_refrance.dart';
import 'package:dynamic_dart_fields/features/account/domain/models/bindings/_bindings.dart';
import 'package:dynamic_dart_fields/features/account/domain/models/views/_views.dart';
import 'package:dynamic_dart_fields/features/account/domain/repo_interfaces/_repo_interfaces.dart';
import 'package:meta/meta.dart';

abstract class IAccountService {}

class AccountService {
  final IAccountRepository repository;

  AccountService({@required this.repository});

  Future<Either<Failure, UserViewModel>> login(
      AccountBindingModel model) async {
    return await repository.login(model);
  }

  UserViewModel getCurrentUser() {
    return repository.currentUser();
  }
}
