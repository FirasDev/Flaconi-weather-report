import 'package:dio/dio.dart' as http;
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  http.Dio dio() {
    final dioClient = http.Dio(
      http.BaseOptions(
        baseUrl: 'https://api.openweathermap.org/data/2.5',
      ),
    );
    return dioClient;
  }
}
