part of 'dependencies_initializer_cubit.dart';

@immutable
class DependenciesInitializerState {
  const DependenciesInitializerState({
    this.isDependenciesInitialized = false,
  });

  final bool isDependenciesInitialized;

  DependenciesInitializerState copyWith({
    bool? isDependenciesInitialized,
  }) {
    return DependenciesInitializerState(
      isDependenciesInitialized:
          isDependenciesInitialized ?? this.isDependenciesInitialized,
    );
  }
}
