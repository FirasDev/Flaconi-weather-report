import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flaconi_weather_report/app/error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params city);
}

abstract class NoParamsUseCase<Type> {
  Future<Either<Failure, Type>> call();
}

// Placeholder in case we don't have any parameter to pass on
class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object> get props => [];
}
