import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:nooma/presentation/base/dependencies/environments.dart';
import 'init_dependencies.config.dart';

const environment = String.fromEnvironment(
  'ENV',
  defaultValue: Environments.dev,
);

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> initDependencies() async {
  $initGetIt(
    getIt,
    environment: environment,
  );
}