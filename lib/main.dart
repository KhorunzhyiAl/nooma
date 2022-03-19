import 'package:flutter/material.dart';
import 'package:nooma/presentation/base/dependencies_initializer_widget/dependencies_initializer_widget.dart';
import 'package:nooma/presentation/base/nooma_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DependenciesInitializerWidget.create(
      child: const NoomaApp(),
    );
  }
}
