import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nooma/presentation/base/dependencies/init_dependencies.dart';
import 'package:logger/logger.dart';
import 'package:nooma/presentation/base/utils/log_printer.dart';

part 'dependencies_initializer_state.dart';

class DependenciesInitializerCubit extends Cubit<DependenciesInitializerState> {
  DependenciesInitializerCubit() : super(const DependenciesInitializerState());

  late final Logger _log = PrefixLogger(
    'DependenciesINitializerCubit ${identityHashCode(this)}',
  );

  Future<void> onCreate() async {
    _log.i('onCreate start');

    await initDependencies();
    emit(state.copyWith(isDependenciesInitialized: true));

    _log.i('onCreate end');
  }
}
