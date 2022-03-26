import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nooma/presentation/base/theme/nooma_theme.dart';
import 'package:nooma/presentation/common/widgets/nooma_card.dart';
import 'package:nooma/presentation/common/widgets/placeholder_loading.dart';
import 'package:nooma/presentation/localization/gen/locale.g.dart';
import 'package:easy_localization/easy_localization.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  static const placeholder = PlaceholderLoading(
    height: 38,
  );

  @override
  Widget build(BuildContext context) {
    final theme = NoomaTheme.of(context);

    return NoomaCard(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            LocaleKeys.lookUpWord.tr(),
            style: theme.title5TextStyle.copyWith(
              color: theme.neptune,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.search,
            color: theme.neptune,
          ),
        ],
      ),
    );
  }
}
