import 'package:dartz/dartz.dart';
import 'package:dynamic_dart_fields/core/_refrance/ex_refrance.dart';
import 'package:dynamic_dart_fields/features/workflow_service/domain/entities/_entities.dart';

abstract class IWorkflowFormRepository {
  Future<Either<Failure, WorkflowForm>> getShariaInquiriesForm();
  Future<Either<Failure, int>> saveShariaInquiriesForm(WorkflowForm model);
}
