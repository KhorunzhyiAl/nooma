import 'package:flutter/cupertino.dart';
import 'package:nooma/presentation/base/theme/nooma_theme.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    required this.percentage,
    Key? key,
  }) : super(key: key);

  /// A value from 0.0 to 1.0
  final double percentage;

  @override
  Widget build(BuildContext context) {
    final theme = NoomaTheme.of(context);
    const borderWidth = 0.5;

    return Container(
      height: 20,
      decoration: BoxDecoration(
        color: theme.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: theme.black,
          width: borderWidth,
        ),
      ),
      alignment: Alignment.centerLeft,
      child: LayoutBuilder(builder: (context, constraints) {
        final width = constraints.maxWidth * percentage;

        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: theme.curiousBlue,
          ),
          width: width,
        );
      }),
    );
  }
}
