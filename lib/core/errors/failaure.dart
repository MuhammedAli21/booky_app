import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class Failaure {
  final String errorMessage;
  const Failaure({required this.errorMessage});
}

class ServerFailaure extends Failaure {
  ServerFailaure({required super.errorMessage});

  factory ServerFailaure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailaure(errorMessage: 'Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailaure(errorMessage: 'Send request Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailaure(errorMessage: 'Receive request Timeout');
      case DioExceptionType.badCertificate:
        return ServerFailaure(errorMessage: 'Bad certificate');
      case DioExceptionType.badResponse:
        return ServerFailaure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailaure(errorMessage: 'The request was canceled!');
      case DioExceptionType.connectionError:
        return ServerFailaure(
          errorMessage: 'Oops, Internet error check your connection',
        );
      case DioExceptionType.unknown:
        return ServerFailaure(
          errorMessage: 'Oops there was an error, Please try again later!',
        );
    }
  }

  factory ServerFailaure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailaure(errorMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailaure(errorMessage: 'Not Found 404');
    } else if (statusCode == 500) {
      return ServerFailaure(
        errorMessage: 'Internal server error, please try again later!',
      );
    }
    return ServerFailaure(
      errorMessage: 'Oops there was an error, Please try again later!',
    );
  }
}
