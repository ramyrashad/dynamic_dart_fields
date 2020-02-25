import 'package:dynamic_dart_fields/features/workflow_service/domain/entities/_entities.dart';

class WorkflowFormFieldOptionMapper extends WorkflowFormFieldOption {
  WorkflowFormFieldOptionMapper(
      {String optionId, String optionTitle, String optionValue})
      : super(
            optionId: optionId,
            optionTitle: optionTitle,
            optionValue: optionValue);

  factory WorkflowFormFieldOptionMapper.fromJson(Map<String, dynamic> json) {
    return WorkflowFormFieldOptionMapper(
        optionId: json['optionId'],
        optionTitle: json['optionTitle'],
        optionValue: json['optionValue']);
  }

  factory WorkflowFormFieldOptionMapper.fromEntity(
      WorkflowFormFieldOption entity) {
    return WorkflowFormFieldOptionMapper(
        optionId: entity.optionId,
        optionTitle: entity.optionTitle,
        optionValue: entity.optionValue);
  }

  Map<String, dynamic> toJson() {
    return {
      'optionId': optionId,
      'optionTitle': optionTitle,
      'optionValue': optionValue
    };
  }
}

//WorkflowFormFieldOption
