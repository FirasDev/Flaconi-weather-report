import 'package:flutter_dotenv/flutter_dotenv.dart';

class OpenWeatherConfig {
  static Future<void> load() async => dotenv.load();

  static String? get(String key) => dotenv.env[key];

  static String? get openWeatherApiKey => get('OPEN_WEATHER_MAP_ID');
}
