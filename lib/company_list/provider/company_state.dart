import 'package:company_list/company_list/model/company_list_model.dart';
import 'package:equatable/equatable.dart';

import '../../core/network/dio_base.dart';

class CompanyState extends Equatable {
  const CompanyState({this.statusCode});

  final int? statusCode;

  @override
  List<Object?> get props => [];
}

class CompanyInitial extends CompanyState {}

class CompanyLoading extends CompanyState {}

class CompanyError extends CompanyState {
  final Failure failure;

  const CompanyError({required this.failure});

  @override
  List<Object?> get props => [failure];
}

class CompanySuccessState extends CompanyState {
  final CompanyListModel model;
  final List<Data> data;
  const CompanySuccessState({required this.model,required this.data});

  @override
  List get props => [model];
}
