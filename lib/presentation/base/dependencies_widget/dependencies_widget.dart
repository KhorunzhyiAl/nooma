import 'package:flutter/widgets.dart';
import 'package:nooma/presentation/base/theme/noom_theme.dart';
import 'package:nooma/presentation/localization/localization_widget.dart';

class DependenciesWidget extends StatelessWidget {
  const DependenciesWidget({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return NoomTheme(
      child: LocalizationWidget(
        child: child,
      ),
    );
  }
}
