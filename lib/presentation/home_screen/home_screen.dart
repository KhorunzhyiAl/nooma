import 'package:flutter/material.dart';
import 'package:nooma/presentation/base/theme/nooma_theme.dart';
import 'package:nooma/presentation/base/theme/nooma_theme_data.dart';
import 'package:nooma/presentation/common/cubit_helpers/cubit_consumer.dart';
import 'package:nooma/presentation/common/cubit_helpers/cubit_provider.dart';
import 'package:nooma/presentation/common/widgets/nooma_card.dart';
import 'package:nooma/presentation/home_screen/cubit/home_cubit.dart';
import 'package:nooma/presentation/home_screen/widgets/discover_new_words_card.dart';
import 'package:nooma/presentation/home_screen/widgets/estimated_vocab_text.dart';
import 'package:nooma/presentation/home_screen/widgets/language_button.dart';
import 'package:nooma/presentation/home_screen/widgets/practice_card.dart';
import 'package:nooma/presentation/word_search/widgets/search_bar.dart';

class HomeScreen extends CubitConsumerWidget<HomeCubit, HomeState> {
  const HomeScreen({Key? key}) : super(key: key);

  static Widget createWithCubit() {
    return CubitProvider<HomeCubit>(
      onCreate: (ctx, cubit) => cubit.onCreate(),
      child: const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = NoomaTheme.of(context);

    return Scaffold(
      backgroundColor: theme.white,
      body: Column(
        children: [
          _buildHeader(theme),
          _buildBody(theme),
        ],
      ),
    );
  }

  Widget _buildBody(NoomThemeData theme) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const DiscoverNewWordsCard(),
              const SizedBox(height: 20),
              _buildPracticeCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPracticeCard() {
    return builder(
      builder: (context, state) => state.map(
        loading: (_) => PracticeCard.placeholder,
        ready: (a) => PracticeCard(
          cardsCompletedToday: a.cardsCompletedToday,
          todaysGoal: a.todaysGoal,
          wordscurrentlyLearning: a.wordsCurrentlyLearning,
        ),
      ),
    );
  }

  Widget _buildHeader(NoomThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: theme.white,
        boxShadow: [
          BoxShadow(
            color: theme.black10,
            blurRadius: 10,
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLanguageButton(),
            const SizedBox(height: 20),
            _buildEstimatedVocabText(),
            const SizedBox(height: 20),
            _buildSearchBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return builder(
      builder: (ctx, state) => state.map(
        loading: (_) => SearchBar.placeholder,
        ready: (_) => const SearchBar(),
      ),
    );
  }

  Widget _buildEstimatedVocabText() {
    return builder(
      builder: (ctx, state) => state.map(
        loading: (_) => EstimatedVocabText.placeholder,
        ready: (a) => EstimatedVocabText(estimatedVocab: a.estimatedVocabulary),
      ),
    );
  }

  Widget _buildLanguageButton() {
    return builder(
      builder: (context, state) => state.map(
        loading: (_) => LanguageButton.placeholder,
        ready: (a) => LanguageButton(languageName: a.languageName),
      ),
    );
  }
}
