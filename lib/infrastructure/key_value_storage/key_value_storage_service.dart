import 'package:flaconi_weather_report/infrastructure/key_value_storage/storage_key.dart';

/// Use this service to store key value data.
// ignore: comment_references
/// first a `key` should be defined in [storage_key.dart] file
abstract interface class KeyValueStorageService {
  bool hasKey(StorageKey key);

  ///Use this generic function to store String, int, double, bool
  ///and List<String> .
  Future<void> write<T>(T value, StorageKey key);

  /// Inorder to get the saved value provide one of these types String,
  /// int, double, bool and List<String>
  T? read<T>(StorageKey key);
}
