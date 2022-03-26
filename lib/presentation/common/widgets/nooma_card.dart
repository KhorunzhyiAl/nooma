import 'package:flutter/cupertino.dart';
import 'package:nooma/presentation/base/theme/nooma_theme.dart';

class NoomaCard extends StatelessWidget {
  const NoomaCard({
    this.child,
    this.padding,
    Key? key,
  }) : super(key: key);

  final Widget? child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final theme = NoomaTheme.of(context);
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: theme.concrete,
        borderRadius: BorderRadius.circular(5),
      ),
      child: child,
    );
  }
}
