import 'package:dynamic_dart_fields/features/account/data/models/views/_views.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class LoginState extends Equatable {
  const LoginState();
  @override
  List<Object> get props => [];
}

class Empty extends LoginState {}

class Loading extends LoginState {}

class Logged extends LoginState {
  final UserViewModel user;

  Logged({@required this.user});

  @override
  List<Object> get props => [user];
}

class LoggingFailded extends LoginState {
  final String message;

  LoggingFailded({@required this.message});

  @override
  List<Object> get props => [message];
}

class InputError extends LoginState {
  final String message;

  InputError({@required this.message});

  @override
  List<Object> get props => [message];
}
