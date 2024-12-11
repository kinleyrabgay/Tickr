import 'package:flutter/material.dart';
import 'package:tickr/core/constants/size.dart';

class RandomQuote extends StatelessWidget {
  final String quote;
  final String author;

  const RandomQuote({
    super.key,
    required this.quote,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          textAlign: TextAlign.center,
          '"$quote"',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: TSizes.p8),
        Text(
          textAlign: TextAlign.center,
          '~ $author',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
