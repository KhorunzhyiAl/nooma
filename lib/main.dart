import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:nooma/presentation/base/dependencies_widget/dependencies_widget.dart';
import 'package:nooma/presentation/base/injectable/init_dependencies.dart';
import 'package:nooma/presentation/base/nooma_app.dart';

Future<void> _initDependencies() {
  return Future.wait([
    initGetIt(),
    EasyLocalization.ensureInitialized(),
  ]);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initDependencies();

  runApp(const DependenciesWidget(
    child: NoomaApp(),
  ));
}


