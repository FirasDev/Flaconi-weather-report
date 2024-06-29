import 'package:dio/dio.dart';

class HttpExceptions implements Exception {
  HttpExceptions.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.cancel:
        message = 'Request to API server was cancelled';
      case DioExceptionType.connectionTimeout:
        message = 'Connection timeout with API server';
      case DioExceptionType.receiveTimeout:
        message = 'Receive timeout in connection with API server';
      case DioExceptionType.sendTimeout:
        message = 'Send timeout in connection with API server';
      case DioExceptionType.connectionError:
        message = 'Connection Error with API server';
      case DioExceptionType.unknown:
        if (error.message?.contains('SocketException') ?? false) {
          message = 'No Internet';
          break;
        }
        message = 'Unexpected error occurred';
      case DioExceptionType.badResponse:
        message = _handleBadReponse(
          error.response?.statusCode,
          error.response?.data,
        );
      // ignore: no_default_cases
      default:
        message = 'Something went wrong';
        break;
    }
  }

  String _handleBadReponse(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 401:
        return 'Unauthorized';
      case 403:
        return 'Forbidden';
      case 404:
        return error is Map
            ? error['message'] as String? ?? '404: no message'
            : '404';
      case 500:
        return 'Internal server error';
      case 502:
        return 'Bad gateway';
      default:
        return 'Oops something went wrong';
    }
  }

  late String message;

  @override
  String toString() => message;
}
