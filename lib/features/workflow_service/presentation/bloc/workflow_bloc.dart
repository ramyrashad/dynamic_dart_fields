import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class WorkflowBloc extends Bloc<WorkflowEvent, WorkflowState> {
  @override
  WorkflowState get initialState => InitialEserviceState();

  @override
  Stream<WorkflowState> mapEventToState(
    WorkflowEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
