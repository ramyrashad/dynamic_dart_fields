import 'dart:convert';

import 'package:dynamic_dart_fields/core/util/enums.dart';
import 'package:dynamic_dart_fields/features/workflow_service/data/mappers/_mappers.dart';
import 'package:dynamic_dart_fields/features/workflow_service/data/mappers/workflow_form_field_mapper.dart';
import 'package:dynamic_dart_fields/features/workflow_service/domain/entities/_entities.dart';
import 'package:meta/meta.dart';

class WorkflowFormMapper extends WorkflowForm {
  WorkflowFormMapper({
    @required String serviceId,
    @required String serviceName,
    @required ServiceType type,
    @required List<WorkflowFormField> fields,
  }) : super(
            serviceId: serviceId,
            serviceName: serviceName,
            type: type,
            fields: fields);

  factory WorkflowFormMapper.fromJson(Map<String, dynamic> json) {
    return WorkflowFormMapper(
        serviceId: json['serviceId'],
        serviceName: json['serviceName'],
        type: EnumMapper.fieldTypeFromJson(json['type']),
        fields: (jsonDecode(json['fields']) as List)
            .map((e) => WorkflowFormFieldMapper.fromJson(e))
            .toList());
  }

  factory WorkflowFormMapper.fromEntity(WorkflowForm entity) {
    return WorkflowFormMapper(
      serviceId: entity.serviceId,
      serviceName: entity.serviceName,
      type: entity.type,
      fields: entity.fields,
    );
  }
}
