import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:nooma/presentation/base/theme/nooma_theme.dart';
import 'package:nooma/presentation/common/widgets/placeholder_loading.dart';
import 'package:nooma/presentation/localization/gen/locale.g.dart';

class EstimatedVocabText extends StatelessWidget {
  const EstimatedVocabText({
    required this.estimatedVocab,
    Key? key,
  }) : super(key: key);

  static const placeholder = PlaceholderLoading(
    height: 16,
    width: 250,
  );

  final int estimatedVocab;

  @override
  Widget build(BuildContext context) {
    final theme = NoomaTheme.of(context);

    return Row(
      children: [
        Text(
          '${LocaleKeys.yourEstimatedVocab.tr()}: ',
          style: theme.body3,
        ),
        Text(
          LocaleKeys.nofWords.plural(estimatedVocab),
          style: theme.body3Bold,
        ),
      ],
    );
  }
}
