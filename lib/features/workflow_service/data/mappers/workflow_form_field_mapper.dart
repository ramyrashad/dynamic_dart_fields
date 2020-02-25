import 'dart:convert';
import 'package:dynamic_dart_fields/features/workflow_service/data/mappers/workflow_form_field_option_mapper.dart';
import 'package:dynamic_dart_fields/features/workflow_service/domain/entities/_entities.dart';

class WorkflowFormFieldMapper extends WorkflowFormField {
  WorkflowFormFieldMapper(
      {String serviceId,
      String name,
      String placeHolder,
      FieldType fieldType,
      bool isRequired,
      String values,
      String savedValue,
      List<WorkflowFormFieldOption> options})
      : super(
            serviceId: serviceId,
            name: name,
            placeHolder: placeHolder,
            fieldType: fieldType,
            isRequired: isRequired,
            values: values,
            savedValue: savedValue,
            options: options);

  factory WorkflowFormFieldMapper.fromJson(Map<String, dynamic> json) {
    return WorkflowFormFieldMapper(
        serviceId: json['serviceId'],
        name: json['name'],
        placeHolder: json['placeHolder'],
        fieldType: json['fieldType'],
        isRequired: json['isRequired'],
        values: json['values'],
        savedValue: json['savedValue'],
        options: (jsonDecode(json['options']) as List)
            .map((e) => WorkflowFormFieldOptionMapper.fromJson(e))
            .toList());
  }

  factory WorkflowFormFieldMapper.fromEntity(WorkflowFormField entity) {
    return WorkflowFormFieldMapper(
        serviceId: entity.serviceId,
        name: entity.name,
        placeHolder: entity.placeHolder,
        fieldType: entity.fieldType,
        isRequired: entity.isRequired,
        values: entity.values,
        savedValue: entity.savedValue);
  }

  Map<String, dynamic> toJson() {
    return {
      'serviceId': serviceId,
      'name': name,
      'placeHolder': placeHolder,
      'fieldType': fieldType,
      'isRequired': isRequired,
      'values': values,
      'savedValue': savedValue,
    };
  }
}

//WorkflowFormFieldOption
