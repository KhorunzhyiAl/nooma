import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nooma/presentation/base/cubit_helpers/cubit_consumer_state.dart';
import 'package:nooma/presentation/base/dependencies_initializer_widget/cubit/dependencies_initializer_cubit.dart';
import 'package:nooma/presentation/base/theme/noom_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends CubitConsumerState<SplashScreen,
    DependenciesInitializerCubit, DependenciesInitializerState> {
  void _pushHomeScreen() {
    // TODO: Implement
  }

  @override
  void initState() {
    super.initState();

    if (cubit.state.isDependenciesInitialized) {
      _pushHomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = NoomTheme.of(context);

    return listener(
      listener: (context, state) {
        if (state.isDependenciesInitialized) {
          _pushHomeScreen();
        }
      },
      child: Container(
        color: theme.curiousBlue,
        alignment: Alignment.bottomCenter,
        child: LinearProgressIndicator(
          minHeight: 2,
          color: theme.white,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
