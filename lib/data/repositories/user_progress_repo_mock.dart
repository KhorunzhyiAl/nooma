import 'package:injectable/injectable.dart';
import 'package:nooma/domain/repositories/user_progress_repo.dart';
import 'package:nooma/presentation/base/injectable/environments.dart';


@LazySingleton(as: UserProgressRepo, env: [Environments.dev])
class UserProgressRepoMock implements UserProgressRepo {
  var _dailyGoal = 100;

  @override
  int get cardsCompletedToday => 40;

  @override
  int get dailyGoal => _dailyGoal;

  @override
  int get estimatedVocabulary => 9732;

  @override
  set dailyGoal(int value) => _dailyGoal = value;
}
