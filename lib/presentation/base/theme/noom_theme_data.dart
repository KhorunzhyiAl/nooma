import 'package:flutter/widgets.dart';

class NoomThemeData {
  NoomThemeData();

  Color get cornflowerBlue => const Color(0xff005cb2);
  Color get curiousBlue => const Color(0xff1e88e5);
  Color get malibu => const Color(0xff6ab7ff);
  Color get selago => const Color(0xffe5eafb);
  Color get hippieBlue => const Color(0xff669cad);
  Color get neptune => const Color(0xff7eacba);
  Color get mineShaft => const Color(0xff2e2e2e);
  Color get wildSand => const Color(0xfff3f3f3);
  Color get white => const Color(0xffffffff);
  Color get black => const Color(0xff000000);
  Color get transparent => const Color(0x00000000);
  Color get black10 => const Color(0x1a000000);

  TextStyle get tabsTextStyle => _fontBase.copyWith(
    fontSize: 12,
    fontWeight: _FontWeight.bold,
  );

  late final _fontBase = TextStyle(
        inherit: false,
        color: black,
      );
}

class _FontWeight {
  static const light = FontWeight.w300;
  static const normal = FontWeight.normal;
  static const medium = FontWeight.w500;
  static const bold = FontWeight.bold;
}
