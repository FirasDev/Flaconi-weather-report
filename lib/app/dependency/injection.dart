import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  preferRelativeImports: false,
  asExtension: true,
)
Future<void> configureDependencies(String env) async => getIt.init(
      environment: env,
    );
