import 'package:flutter/material.dart';
import 'package:nooma/presentation/base/theme/nooma_theme.dart';
import 'package:nooma/presentation/common/widgets/nooma_card.dart';
import 'package:nooma/presentation/localization/gen/locale.g.dart';
import 'package:easy_localization/easy_localization.dart';

class DiscoverNewWordsCard extends StatelessWidget {
  const DiscoverNewWordsCard({Key? key}) : super(key: key);

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
              LocaleKeys.findWordsYouDontKnow.tr(),
              style: theme.title3TextStyle,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: theme.elevatedButtonStyle,
            child: Text(LocaleKeys.discoverNew.tr()),
          ),
        ],
      ),
    );
  }
}
