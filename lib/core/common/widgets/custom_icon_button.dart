import 'package:flutter/material.dart';
import 'package:tickr/core/constants/size.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Function()? onTap;

  const CustomIconButton({
    super.key,
    required this.icon,
    this.iconSize = 24,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(TSizes.p16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          icon,
          size: iconSize,
        ),
      ),
    );
  }
}
