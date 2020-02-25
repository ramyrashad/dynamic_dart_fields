import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class WorkflowFormFieldOption extends Equatable {
  final String optionId;
  final String optionTitle;
  final String optionValue;

  WorkflowFormFieldOption(
      {@required this.optionId,
      @required this.optionTitle,
      @required this.optionValue});

  @override
  List<Object> get props => [optionId, optionTitle, optionValue];
}
