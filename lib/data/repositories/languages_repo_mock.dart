import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:nooma/domain/entities/language_data.dart';
import 'package:nooma/domain/repositories/languages_repo.dart';
import 'package:nooma/presentation/base/injectable/environments.dart';
import 'package:nooma/presentation/base/utils/log_printer.dart';

@LazySingleton(as: LanguagesRepo, env: [Environments.dev])
class LanguagesRepoMock implements LanguagesRepo {
  late final _log = PrefixLogger('LanguagesRepoMock ${identityHashCode(this)}');

  @override
  set languageCode(String code) {
    _log.i('set languageCode: $code');
  }

  @override
  LanguageData? get selectedLanguage => const LanguageData(
        languageCode: 'en',
        languageName: 'English',
      );

  @override
  Stream<LanguageData> get selectedLanguageStream =>
      StreamController<LanguageData>.broadcast().stream;
}
