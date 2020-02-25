import 'package:dartz/dartz.dart';
import 'package:dynamic_dart_fields/core/_refrance/ex_refrance.dart';
import 'package:dynamic_dart_fields/features/workflow_service/domain/entities/_entities.dart';
import 'package:dynamic_dart_fields/features/workflow_service/domain/repo_interfaces/_repo_interfaces.dart';
import 'package:meta/meta.dart';

abstract class IWorkflowService {}

class WorkflowService implements IWorkflowService {
  final IWorkflowFormRepository repository;

  WorkflowService({@required this.repository});

  Future<Either<Failure, WorkflowForm>> getShariaInquiriesForm() {
    return this.repository.getShariaInquiriesForm();
  }

  Future<Either<Failure, int>> saveShariaInquiriesForm(WorkflowForm model) {
    return this.repository.saveShariaInquiriesForm(model);
  }
}
