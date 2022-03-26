import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nooma/presentation/base/theme/nooma_theme_data.dart';

class NoomaTheme extends InheritedWidget {
  NoomaTheme({
    required Widget child,
    Key? key,
  }) : super(
          key: key,
          child: child,
        );

  final data = NoomThemeData();

  static NoomThemeData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NoomaTheme>()!.data;
  }

  @override
  bool updateShouldNotify(NoomaTheme oldWidget) {
    return oldWidget.data != data;
  }
}
