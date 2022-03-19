import 'package:flutter/material.dart';
import 'package:nooma/presentation/splash_screen/splash_screen.dart';

class NoomaApp extends StatelessWidget {
  const NoomaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'nooma',
      home: SplashScreen(),
    );
  }
}
