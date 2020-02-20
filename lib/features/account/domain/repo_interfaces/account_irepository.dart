import 'package:dartz/dartz.dart';
import 'package:dynamic_dart_fields/core/_refrance/ex_refrance.dart';
import 'package:dynamic_dart_fields/features/account/domain/entities/_entities.dart';

abstract class IAccountRepository {
  Future<Either<Failure, User>> login(Account model);
  User currentUser();
  void logOutUser();
}
