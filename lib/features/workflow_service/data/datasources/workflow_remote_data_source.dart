import 'package:dio/dio.dart';
import 'package:dynamic_dart_fields/core/_refrance/com_refrance.dart';
import 'package:dynamic_dart_fields/core/_refrance/ex_refrance.dart';
import 'package:dynamic_dart_fields/core/util/enums.dart';
import 'package:dynamic_dart_fields/features/workflow_service/data/mappers/_mappers.dart';
import 'package:dynamic_dart_fields/features/workflow_service/domain/entities/_entities.dart';
import 'package:meta/meta.dart';

abstract class IWorkflowFormRemoteDataSource {
  /// Throws a [ServerException] for all error codes.
  Future<WorkflowForm> getWorkflowForm(ServiceType serviceType);

  /// Throws a [ServerException] for all error codes.
  Future<int> saveWorkflowForm(WorkflowForm entity);
}

class WorkflowFormRemoteDataSource implements IWorkflowFormRemoteDataSource {
  final DioService dioService;

  WorkflowFormRemoteDataSource({@required this.dioService});

  @override
  Future<WorkflowForm> getWorkflowForm(ServiceType serviceType) async {
    Response response = await this
        .dioService
        .dio
        .get('GetWorkflowService/' + serviceType.toString());

    if (response.statusCode == 200)
      return WorkflowFormMapper.fromJson(response.data);
    else
      throw ServerException(response.data);
  }

  @override
  Future<int> saveWorkflowForm(WorkflowForm entity) async {
    Response response = await this
        .dioService
        .dio
        .post('SaveWorkflow', data: WorkflowFormMapper.fromEntity(entity));

    if (response.statusCode == 200)
      return 0;
    else
      throw ServerException(response.data);
  }
}
