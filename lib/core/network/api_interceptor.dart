import 'package:dio/dio.dart';


class ApiInterceptor extends Interceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // var deviceModel= await getDeviceModel();
    // options.headers.putIfAbsent('DEVICE_MODEL', () => 'DEVICE_MODEL: FLTASSIGN_prakash9630_$deviceModel');
    return super.onRequest(options, handler);
  }
  @override
  Future<void> onResponse(response, ResponseInterceptorHandler handler) async {
    return super.onResponse(response, handler);
  }

}





