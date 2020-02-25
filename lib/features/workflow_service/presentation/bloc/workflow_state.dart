import 'package:equatable/equatable.dart';

abstract class WorkflowState extends Equatable {
  const WorkflowState();
}

class InitialEserviceState extends WorkflowState {
  @override
  List<Object> get props => [];
}
