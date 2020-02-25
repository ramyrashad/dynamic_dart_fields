import 'package:dartz/dartz.dart';
import 'package:dynamic_dart_fields/core/_refrance/com_refrance.dart';
import 'package:dynamic_dart_fields/core/_refrance/ex_refrance.dart';
import 'package:dynamic_dart_fields/core/util/enums.dart';
import 'package:dynamic_dart_fields/features/workflow_service/data/datasources/_datasources.dart';
import 'package:dynamic_dart_fields/features/workflow_service/domain/entities/_entities.dart';
import 'package:dynamic_dart_fields/features/workflow_service/domain/repo_interfaces/_repo_interfaces.dart';
import 'package:meta/meta.dart';

class WorkflowFormRepository implements IWorkflowFormRepository {
  final IWorkflowFormRemoteDataSource remoteDataSource;
  final IWorkflowFormLocalDataSource localDataSource;
  final INetworkInfo networkInfo;

  WorkflowFormRepository({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  Future<Either<Failure, WorkflowForm>> getShariaInquiriesForm() async {
    try {
      var workFlowForm =
          await remoteDataSource.getWorkflowForm(ServiceType.ApplyToRoqia);
      return Right(workFlowForm);
    } catch (e) {
      return Left(e);
    }
  }

  Future<Either<Failure, int>> saveShariaInquiriesForm(
      WorkflowForm model) async {
    try {
      var workFlowForm = await remoteDataSource.saveWorkflowForm(model);
      return Right(workFlowForm);
    } catch (e) {
      return Left(e);
    }
  }
}
