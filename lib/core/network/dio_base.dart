import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
class Failure {
  Failure({
    required this.statusCode,
    required this.message,
    required this.errorData,
  });
  int statusCode;
  String message;
  dynamic errorData;
}

Future<Either<Failure, dynamic>> apiBase<T>(
    Future<Response<dynamic>> apiCall,) async {
    const validStatusCode = <int>[200, 201];
    try {
      Response? response = await apiCall;
      if (validStatusCode.contains(response.statusCode)) {
        try {
          return Right(response.data);
        } catch (e) {
          return Left(Failure(
            statusCode: response.statusCode!,
            message: response.data['message']??'Parsing Error',
            errorData: response.data,
          ));
        }
      }
      return Left(Failure(
        statusCode: response.statusCode ?? 100,
        message: 'Something went wrong',
        errorData: response.data,
      ));

    }  on DioException catch (e) {
      return Left(Failure(
        statusCode: e.response!.statusCode!,
        message: e.response?.data['message']?? 'Error',
        errorData: e.response?.data,
      ));
    } catch (e) {
      log(e.toString());

    }
    return Left(
      Failure(
        statusCode: 100,
        message: 'Something went wrong, please try again.',
        errorData: null,
      ),
    );
  }
