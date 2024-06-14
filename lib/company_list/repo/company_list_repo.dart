import 'package:company_list/core/const/app_endpoint.dart';
import 'package:company_list/core/network/dio_client.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/network/dio_base.dart';

final companyListRepoProvider = Provider<CompanyListRepo>((ref) => CompanyListRepo());

class CompanyListRepo {
  Future<Either<Failure, dynamic>> fetchCompanyList({ Map<String,dynamic>? body}){
    return apiBase(dio.get(EndPoint.companyListing,queryParameters: body));
  }

}