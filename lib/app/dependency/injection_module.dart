import 'package:dio/dio.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

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
