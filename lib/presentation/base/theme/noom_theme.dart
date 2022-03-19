import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nooma/presentation/base/theme/noom_theme_data.dart';

class NoomTheme extends InheritedWidget {
  const NoomTheme({
    required Widget child,
    Key? key,
  }) : super(
          key: key,
          child: child,
        );

  final data = const NoomThemeData();

  static NoomThemeData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NoomTheme>()!.data;
  }

  @override
  bool updateShouldNotify(NoomTheme oldWidget) {
    return oldWidget.data != data;
  }
}
