import 'package:flutter/material.dart';
import 'package:tickr/core/constants/color.dart';
import 'package:tickr/core/constants/size.dart';

enum TaskType { all, inProgress, onHold, completed }

class TTaskCard extends StatelessWidget {
  final TaskType type;
  const TTaskCard({
    super.key,
    this.type = TaskType.all,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(TSizes.p16),
      decoration: BoxDecoration(
        gradient: TColors.onHoldTabGradient,
        color: TColors.black.withOpacity(0.8),
        borderRadius: BorderRadius.circular(TSizes.b16),
        boxShadow: [
          BoxShadow(
            color: TColors.black.withOpacity(0.05),
            spreadRadius: 0.2,
            blurRadius: 0.2,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date & Time
          const Row(
            children: [
              // Data
              GradientText(
                text: '25 Sept, 2024',
              ),
              GradientText(
                text: '05:20 PM',
              )
            ],
          ),
          const SizedBox(height: TSizes.p16),

          // Title
          Text(
            'Meeting with manager at park',
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .apply(color: TColors.white),
          ),
          const SizedBox(height: TSizes.p16),

          Text(
            'This meeting shouldn’t be missed at any cost, It’s really an important meeting with this manager.',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .apply(color: TColors.white),
          )
        ],
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  final String text;

  const GradientText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(TSizes.p8),
      decoration: BoxDecoration(
        // gradient: TColors.primaryGradient,

        borderRadius: BorderRadius.circular(TSizes.b8),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge!.apply(
              color: TColors.white,
            ),
      ),
    );
  }
}
