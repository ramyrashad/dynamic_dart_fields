import 'package:dynamic_dart_fields/features/workflow_service/domain/entities/_entities.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class WorkflowFormField extends Equatable {
  final String serviceId;
  final String name;
  final String placeHolder;
  final FieldType fieldType;
  final bool isRequired;
  final String values;
  final String savedValue;
  final List<WorkflowFormFieldOption> options;

  WorkflowFormField({
    @required this.serviceId,
    @required this.name,
    @required this.placeHolder,
    @required this.fieldType,
    @required this.isRequired,
    @required this.values,
    @required this.savedValue,
    this.options,
  });

  @override
  List<Object> get props => [
        serviceId,
        name,
        placeHolder,
        fieldType,
        isRequired,
        values,
        savedValue,
        options
      ];
}
