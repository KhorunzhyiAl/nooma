import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nooma/presentation/base/cubit_helpers/cubit_consumer.dart';
import 'package:nooma/presentation/base/dependencies_initializer_widget/cubit/dependencies_initializer_cubit.dart';
import 'package:nooma/presentation/base/theme/noom_theme.dart';

class DependenciesInitializerWidget extends StatelessWidget
    with
        CubitConsumer<DependenciesInitializerCubit,
            DependenciesInitializerState> {
  const DependenciesInitializerWidget({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  static Widget create({required Widget child}) {
    return BlocProvider<DependenciesInitializerCubit>.value(
      value: DependenciesInitializerCubit()..onCreate(),
      child: DependenciesInitializerWidget(
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return NoomTheme(
      child: child,
    );
  }
}
