import 'package:flutter/material.dart';
import 'package:nooma/presentation/localization/gen/locale.g.dart';
import 'package:easy_localization/easy_localization.dart';

class NoomaApp extends StatelessWidget {
  const NoomaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'nooma',
      home: const TestWidget(),
    );
  }
}

class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final test = LocaleKeys.helloWorld.tr();
    debugPrint(test);

    return Container();
  }
}
