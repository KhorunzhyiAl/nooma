import 'package:flutter/material.dart';

class OverlayedSplash extends StatelessWidget {
  const OverlayedSplash({
    required this.onTap,
    required this.child,
    this.splashBorderRadius = BorderRadius.zero,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final Widget child;
  final BorderRadius splashBorderRadius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        child,
        Positioned.fill(
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: onTap,
              borderRadius: splashBorderRadius,
            ),
          ),
        ),
      ],
    );
  }
}
