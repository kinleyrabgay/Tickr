import 'package:flutter/material.dart';
import 'package:tickr/core/common/widgets/custom_tabs.dart';
import 'package:tickr/core/common/widgets/custom_text.dart';
import 'package:tickr/core/common/widgets/cutom_appbar.dart';
import 'package:tickr/core/common/widgets/gradient_background.dart';
import 'package:tickr/core/constants/size.dart';
import 'package:tickr/core/constants/tabs.dart';
import 'package:tickr/features/task/presentation/widget/random_quote.dart';
import 'package:tickr/features/task/presentation/widget/task_card.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TGradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: TSizes.ha,
              bottom: TSizes.ha * 3,
              left: TSizes.pd,
              right: TSizes.pd,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Appbar
                const TCustomAppbar(),
                const SizedBox(height: TSizes.p16),

                // Heading
                const TCustomText(
                  text: 'Manage Your Daily Tasks',
                ),
                const SizedBox(height: TSizes.p16),

                // Tabs
                TCustomTabs(
                  tabs: taskTabs,
                ),
                const SizedBox(height: TSizes.p16 * 2),

                // Cards
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  padding: EdgeInsets.zero,
                  itemBuilder: (BuildContext context, int index) {
                    return const TTaskCard();
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    height: TSizes.p16,
                  ),
                ),
                const SizedBox(height: TSizes.p16 * 2),

                // Random Quote
                const RandomQuote(
                  quote: 'Small steps every day lead to big achievements.',
                  author: 'Kinley Rabgay',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
