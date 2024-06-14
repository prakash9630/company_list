import 'package:dio/dio.dart';

import '../const/app_endpoint.dart';
import 'api_interceptor.dart';

final dio = Dio(
  BaseOptions(
     baseUrl: EndPoint.baseUrl,
    headers: <String, String>{
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
    receiveDataWhenStatusError: true,
  ),
)..interceptors.add(ApiInterceptor());


