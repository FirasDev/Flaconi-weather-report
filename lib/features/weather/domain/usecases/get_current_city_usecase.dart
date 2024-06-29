import 'package:flaconi_weather_report/app/error/failures.dart';
import 'package:flaconi_weather_report/features/weather/domain/repository/location_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetCurrentCityUsecase {
  final LocationRepository locationRepository;

  GetCurrentCityUsecase(this.locationRepository);

  Future<Either<Failure, String>> call() async {
    try {
      final city = await locationRepository.getCurrentCity();
      return Right(city);
    } on Exception catch (_) {
      return Left(NoGpsFailure());
    }
  }
}
