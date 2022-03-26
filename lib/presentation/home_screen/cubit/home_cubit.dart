import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nooma/domain/entities/language_data.dart';
import 'package:nooma/domain/repositories/languages_repo.dart';
import 'package:nooma/domain/repositories/user_progress_repo.dart';
import 'package:nooma/presentation/base/utils/log_printer.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._userProgressRepo,
    this._languagesRepo,
  ) : super(const HomeState.loading());

  final UserProgressRepo _userProgressRepo;
  final LanguagesRepo _languagesRepo;

  late final _log = PrefixLogger('HomeCubit ${identityHashCode(this)}');

  Future<void> onCreate() async {
    final selectedLanguage = _languagesRepo.selectedLanguage;

    if (selectedLanguage == null) {
      // TODO: open select language introduction.
      _log.i('no selected language');

      return;
    }

    emit(HomeState.ready(
      languageName: selectedLanguage.languageName,
      estimatedVocabulary: _userProgressRepo.estimatedVocabulary,
      wordsCurrentlyLearning: 10,
      todaysGoal: _userProgressRepo.dailyGoal,
      cardsCompletedToday: _userProgressRepo.cardsCompletedToday,
    ));
  }
}
