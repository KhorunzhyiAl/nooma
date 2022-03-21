import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:nooma/presentation/main_tabs_screen/main_tabs_screen.dart';

class NoomaApp extends StatelessWidget {
  const NoomaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'nooma',
      home: MainTabsScreen.create(),
    );
  }
}
