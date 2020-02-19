import 'package:dartz/dartz.dart';
import 'package:dynamic_dart_fields/core/_refrance/ex_refrance.dart';
import 'package:dynamic_dart_fields/features/account/data/models/bindings/_bindings.dart';
import 'package:dynamic_dart_fields/features/account/data/models/views/_views.dart';

abstract class IAccountRepository {
  Future<Either<Failure, UserViewModel>> login(AccountBindingModel model);
  UserViewModel currentUser();
  void logOutUser();
}
