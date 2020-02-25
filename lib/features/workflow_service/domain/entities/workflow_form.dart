import 'package:dynamic_dart_fields/core/util/enums.dart';
import 'package:dynamic_dart_fields/features/workflow_service/domain/entities/_entities.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class WorkflowForm extends Equatable {
  final String serviceId;
  final String serviceName;
  final ServiceType type;
  final List<WorkflowFormField> fields;

  WorkflowForm({
    @required this.serviceId,
    @required this.serviceName,
    @required this.type,
    @required this.fields,
  });

  @override
  List<Object> get props => [serviceId, serviceName];
}

enum FieldType {
  Text,
  Number,
  Date,
  Logic,
  Menu,
  TextArea,
  Email,
  Location,
  PredefineList,
  Time
}
