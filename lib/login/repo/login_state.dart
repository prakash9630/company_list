import 'package:company_list/company_list/model/company_list_model.dart';
import 'package:company_list/login/model/login_model.dart';
import 'package:equatable/equatable.dart';

import '../../core/network/dio_base.dart';

class LoginState extends Equatable {
  const LoginState({this.statusCode});

  final int? statusCode;

  @override
  List<Object?> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginError extends LoginState {
  final Failure failure;

  const LoginError({required this.failure});

  @override
  List<Object?> get props => [failure];
}

class LoginSuccessState extends LoginState {
 final LoginModel model;
  const LoginSuccessState(this.model);

  // @override
  // List get props => [model];
}
