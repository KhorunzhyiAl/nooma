import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

class LocalizationWidget extends StatelessWidget {
  const LocalizationWidget({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [Locale('en')],
      fallbackLocale: const Locale('en'),
      path: 'assets/translations',
      child: child,
    );
  }
}
