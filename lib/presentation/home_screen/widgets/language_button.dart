import 'package:flutter/material.dart';
import 'package:nooma/presentation/base/theme/nooma_theme.dart';
import 'package:nooma/presentation/common/widgets/placeholder_loading.dart';
import 'package:nooma/presentation/localization/gen/locale.g.dart';
import 'package:easy_localization/easy_localization.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    required this.languageName,
    Key? key,
  }) : super(key: key);

  static const placeholder = PlaceholderLoading(
    width: 200,
    height: 24,
  );

  final String languageName;

  @override
  Widget build(BuildContext context) {
    final theme = NoomaTheme.of(context);

    return TextButton(
      onPressed: () {
        // TODO: open select language screen.
      },
      style: theme.bigTextButtonStyle,
      child: Text(
        LocaleKeys.languageIsName.tr(args: [languageName]),
      ),
    );
  }
}
