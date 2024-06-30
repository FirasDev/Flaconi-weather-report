import 'package:flaconi_weather_report/infrastructure/key_value_storage/storage_key.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'key_value_storage_service.dart';

@LazySingleton(as: KeyValueStorageService)
class KeyValueStorageImpl implements KeyValueStorageService {
  KeyValueStorageImpl(
    this._sharedPreference,
  );

  final SharedPreferences _sharedPreference;

  @override
  T? read<T>(StorageKey key) {
    return _sharedPreference.get(key.toString()) as T?;
  }

  @override
  Future<void> write<T>(T value, StorageKey key) async {
    switch (T) {
      case String:
        await _sharedPreference.setString(key.toString(), value as String);
      case bool:
        await _sharedPreference.setBool(key.toString(), value as bool);
      case int:
        await _sharedPreference.setInt(key.toString(), value as int);
      case double:
        await _sharedPreference.setDouble(key.toString(), value as double);
      case const (List<String>):
        await _sharedPreference.setStringList(
          key.toString(),
          value as List<String>,
        );
    }
  }

  @override
  bool hasKey(StorageKey key) {
    return _sharedPreference.containsKey(key.toString());
  }
}
