import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({this.message});

  final String? message;

  @override
  List<Object> get props => [message ?? ''];
}

class NoDataFoundFailure extends Failure {
  const NoDataFoundFailure({super.message});
}

class NoInternetFailure extends Failure {}

class NoGpsFailure extends Failure {}
