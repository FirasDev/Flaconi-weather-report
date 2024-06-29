import 'package:flaconi_weather_report/features/weather/domain/repository/location_repository.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LocationRepository)
class LocationRepositoryImpl implements LocationRepository {
  @override
  Future<String> getCurrentCity() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled
      throw Exception('Location services are disabled.');
    }

    // Check for location permissions
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied
        throw Exception('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever
      throw Exception('Location permissions are permanently denied');
    }

    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    final placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    return placemarks.first.locality ?? 'Berlin';
  }
}
