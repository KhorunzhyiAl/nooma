import 'package:flutter/material.dart';
import 'package:nooma/presentation/base/theme/nooma_theme.dart';
import 'package:nooma/presentation/base/theme/nooma_theme_data.dart';
import 'package:nooma/presentation/common/widgets/nooma_card.dart';
import 'package:nooma/presentation/common/widgets/placeholder_loading.dart';
import 'package:nooma/presentation/common/widgets/progress_bar.dart';
import 'package:nooma/presentation/localization/gen/locale.g.dart';
import 'package:easy_localization/easy_localization.dart';

class PracticeCard extends StatelessWidget {
  const PracticeCard({
    required this.cardsCompletedToday,
    required this.todaysGoal,
    required this.wordscurrentlyLearning,
    Key? key,
  }) : super(key: key);

  static const placeholder = PlaceholderLoading(height: 224);

  final int cardsCompletedToday;
  final int todaysGoal;
  final int wordscurrentlyLearning;

  @override
  Widget build(BuildContext context) {
    final theme = NoomaTheme.of(context);

    return NoomaCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              LocaleKeys.practiceNewWords.tr(),
              style: theme.title3TextStyle,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            LocaleKeys.todaysGoal.plural(todaysGoal),
            style: theme.captionBoldTextStyle,
          ),
          const SizedBox(height: 5),
          _buildTodaysProgress(theme),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: theme.elevatedButtonStyle,
            child: Text(LocaleKeys.practice.tr()),
          ),
          const SizedBox(height: 15),
          TextButton(
            onPressed: () {},
            style: theme.smallTextButtonStyle,
            child: Text(
              LocaleKeys.currentlyLearning.plural(wordscurrentlyLearning),
            ),
          ),
        ],
      ),
    );
  }

  Row _buildTodaysProgress(NoomThemeData theme) {
    return Row(
      children: [
        Expanded(
          child: ProgressBar(
            percentage: cardsCompletedToday / todaysGoal,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          cardsCompletedToday.toString(),
          style: theme.captionBoldTextStyle,
        ),
      ],
    );
  }
}
