part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.ready({
    required String languageName,
    required int estimatedVocabulary,
    required int wordsCurrentlyLearning,
    required int todaysGoal,
    required int cardsCompletedToday,
  }) = _Ready;
}
