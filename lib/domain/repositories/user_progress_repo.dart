abstract class UserProgressRepo {
  int get dailyGoal;

  int get cardsCompletedToday;

  int get estimatedVocabulary;

  set dailyGoal(int value);
}