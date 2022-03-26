import 'package:flutter/material.dart';

class NoomThemeData {
  NoomThemeData();

  Color get cornflowerBlue => const Color(0xff005cb2);
  Color get curiousBlue => const Color(0xff1e88e5);
  Color get malibu => const Color(0xff6ab7ff);
  Color get selago => const Color(0xffe5eafb);
  Color get hippieBlue => const Color(0xff669cad);
  Color get neptune => const Color(0xff7eacba);
  Color get mineShaft => const Color(0xff2e2e2e);
  Color get concrete => const Color(0xfff3f3f3);
  Color get white => const Color(0xffffffff);
  Color get black => const Color(0xff000000);
  Color get transparent => const Color(0x00000000);
  Color get black10 => const Color(0x1a000000);

  TextStyle get captionBoldTextStyle => _fontBase.copyWith(
        fontSize: 12,
        fontWeight: _FontWeight.bold,
      );

  TextStyle get title1TextStyle => _fontBase.copyWith(
        fontSize: 24,
        fontWeight: _FontWeight.bold,
      );

  TextStyle get title3TextStyle => _fontBase.copyWith(
        fontSize: 20,
        fontWeight: _FontWeight.bold,
      );

  TextStyle get title5TextStyle => _fontBase.copyWith(
        fontSize: 15,
        fontWeight: _FontWeight.bold,
      );

  TextStyle get body3 => _fontBase.copyWith(
        fontSize: 14,
        fontWeight: _FontWeight.regular,
      );

  TextStyle get body3Bold => _fontBase.copyWith(
        fontSize: 14,
        fontWeight: _FontWeight.bold,
      );

  TextStyle get captionBig => _fontBase.copyWith(
        fontSize: 20,
        fontWeight: _FontWeight.medium,
      );

  late final _fontBase = TextStyle(
    inherit: false,
    color: mineShaft,
  );

  ButtonStyle get bigTextButtonStyle => ButtonStyle(
        overlayColor: mspAll(transparent),
        textStyle: mspAll(title1TextStyle.copyWith(
          decoration: TextDecoration.underline,
        )),
        padding: mspAll(EdgeInsets.zero),
        foregroundColor: resolveWith(
          normal: mineShaft,
          pressed: cornflowerBlue,
        ),
      );

  ButtonStyle get smallTextButtonStyle => ButtonStyle(
        overlayColor: mspAll(transparent),
        textStyle: mspAll(title5TextStyle),
        padding: mspAll(EdgeInsets.zero),
        foregroundColor: resolveWith(
          normal: curiousBlue,
          pressed: hippieBlue,
        ),
      );

  ButtonStyle get elevatedButtonStyle => ButtonStyle(
        elevation: mspAll(0),
        textStyle: mspAll(captionBig),
        padding: mspAll(const EdgeInsets.all(10)),
        foregroundColor: resolveWith(
          normal: white,
          disabled: neptune,
        ),
        backgroundColor: resolveWith(
          normal: curiousBlue,
          pressed: malibu,
          disabled: selago,
        ),
        shape: resolveWith(
          normal: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide.none,
          ),
          pressed: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(
              color: hippieBlue,
              width: 1,
            ),
          ),
          disabled: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(
              color: hippieBlue,
              width: 1,
            ),
          ),
        ),
      );
}

MaterialStateProperty<T> mspAll<T>(T value) {
  return MaterialStateProperty.all(value);
}

MaterialStateProperty<T?> resolveWith<T>({
  required T normal,
  T? pressed,
  T? disabled,
}) {
  return MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.pressed)) {
      return pressed;
    } else if (states.contains(MaterialState.disabled)) {
      return disabled;
    } else {
      return normal;
    }
  });
}

class _FontWeight {
  static const light = FontWeight.w300;
  static const regular = FontWeight.normal;
  static const medium = FontWeight.w500;
  static const bold = FontWeight.bold;
}
