import 'package:flutter/cupertino.dart';

@immutable
class LanguageData {
  const LanguageData({
    required this.languageCode,
    required this.languageName,
  });
  
  final String languageCode;
  final String languageName;
}
