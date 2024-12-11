import 'package:flutter/material.dart';
import 'package:tickr/core/constants/color.dart';

class TGradientBackground extends StatelessWidget {
  final Widget child;

  const TGradientBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: TColors.primaryGradient),
      child: child,
    );
  }
}
