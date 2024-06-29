import 'package:dio/dio.dart' as http;
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  http.Dio dio() {
    final dioClient = http.Dio(
      http.BaseOptions(
        baseUrl: 'tmdb url',
      ),
    );
    return dioClient;
  }
}
