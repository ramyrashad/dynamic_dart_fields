import 'package:dartz/dartz.dart';
import 'package:dynamic_dart_fields/core/_refrance/com_refrance.dart';
import 'package:dynamic_dart_fields/core/_refrance/ex_refrance.dart';
import 'package:dynamic_dart_fields/features/account/data/datasources/_datasources.dart';
import 'package:dynamic_dart_fields/features/account/domain/entities/_entities.dart';
import 'package:dynamic_dart_fields/features/account/domain/repo_interfaces/_repo_interfaces.dart';
import 'package:meta/meta.dart';

class AccountRepository implements IAccountRepository {
  final IAccountRemoteDataSource remoteDataSource;
  final IAccountLocalDataSource localDataSource;
  final INetworkInfo networkInfo;

  AccountRepository({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, User>> login(Account model) async {
    if (await this.networkInfo.isConnected) {
      try {
        final userViewModel = await remoteDataSource.login(model);
// To Do ++

        localDataSource.cachelogin(userViewModel);
        return Right(userViewModel);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }

  @override
  User currentUser() {
    // TODO: implement currentUser
    return null;
  }

  @override
  void logOutUser() {
    // TODO: implement logOutUser
  }
}
