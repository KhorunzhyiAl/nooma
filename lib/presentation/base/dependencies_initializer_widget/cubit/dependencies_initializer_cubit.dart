import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nooma/presentation/base/dependencies/init_dependencies.dart';

part 'dependencies_initializer_state.dart';

class DependenciesInitializerCubit extends Cubit<DependenciesInitializerState> {
  DependenciesInitializerCubit() : super(const DependenciesInitializerState());

  Future<void> onCreate() async {
    await initDependencies();
    emit(state.copyWith(isDependenciesInitialized: true));
  }
}
