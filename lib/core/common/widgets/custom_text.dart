import 'package:flutter/material.dart';

class TCustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const TCustomText({
    super.key,
    required this.text,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displayMedium?.merge(style),
    );
  }
}
