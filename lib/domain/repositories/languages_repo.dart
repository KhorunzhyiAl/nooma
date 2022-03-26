import 'dart:async';

import 'package:nooma/domain/entities/language_data.dart';

abstract class LanguagesRepo {
  set languageCode(String code);

  LanguageData? get selectedLanguage;

  Stream<LanguageData> get selectedLanguageStream;
}