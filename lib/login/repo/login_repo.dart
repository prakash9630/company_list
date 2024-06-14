


import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/const/app_endpoint.dart';
import '../../core/network/dio_base.dart';
import '../../core/network/dio_client.dart';

final loginRepoRepoProvider = Provider<LoginRepo>((ref) => LoginRepo());

class LoginRepo {
  Future<Either<Failure, dynamic>> login({required Map<String,dynamic> body}){
    return apiBase(dio.post(EndPoint.login,data: body));
  }
}