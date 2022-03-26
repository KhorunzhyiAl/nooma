import 'package:flutter/cupertino.dart';
import 'package:nooma/presentation/base/theme/nooma_theme.dart';

class PlaceholderLoading extends StatelessWidget {
  const PlaceholderLoading({
    this.width,
    this.height,
    this.color,
    Key? key,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = NoomaTheme.of(context);

    // TODO: maybe a gradient animation?
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color ?? theme.black10,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
