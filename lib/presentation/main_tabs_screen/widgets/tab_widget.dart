import 'package:flutter/material.dart';
import 'package:nooma/presentation/base/theme/nooma_theme.dart';
import 'package:nooma/presentation/base/theme/nooma_theme_data.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    required this.onPressed,
    required this.iconData,
    required this.name,
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  final VoidCallback onPressed;
  final IconData iconData;
  final String name;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final theme = NoomaTheme.of(context);

    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(
          isSelected ? theme.concrete : theme.transparent,
        ),
        overlayColor: MaterialStateProperty.all(theme.black10),
      ),
      child: _buildContents(theme),
    );
  }

  Column _buildContents(NoomThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: theme.mineShaft,
        ),
        Text(
          name,
          style: theme.captionBoldTextStyle,
        ),
      ],
    );
  }
}
