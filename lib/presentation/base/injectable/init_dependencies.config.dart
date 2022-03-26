// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../data/repositories/languages_repo_mock.dart' as _i4;
import '../../../data/repositories/user_progress_repo_mock.dart' as _i7;
import '../../../domain/repositories/languages_repo.dart' as _i3;
import '../../../domain/repositories/user_progress_repo.dart' as _i6;
import '../../home_screen/cubit/home_cubit.dart' as _i8;
import '../../main_tabs_screen/cubit/main_tabs_cubit.dart' as _i5;

const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.LanguagesRepo>(() => _i4.LanguagesRepoMock(),
      registerFor: {_dev});
  gh.factory<_i5.MainTabsCubit>(() => _i5.MainTabsCubit());
  gh.lazySingleton<_i6.UserProgressRepo>(() => _i7.UserProgressRepoMock(),
      registerFor: {_dev});
  gh.factory<_i8.HomeCubit>(() =>
      _i8.HomeCubit(get<_i6.UserProgressRepo>(), get<_i3.LanguagesRepo>()));
  return get;
}
