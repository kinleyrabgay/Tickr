import 'package:flutter/material.dart';
import 'package:tickr/core/common/widgets/custom_text.dart';
import 'package:tickr/core/common/widgets/cutom_appbar.dart';
import 'package:tickr/core/common/widgets/gradient_background.dart';
import 'package:tickr/core/constants/size.dart';
import 'package:tickr/features/task/presentation/widget/random_quote.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TGradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: TSizes.ha,
              bottom: TSizes.ha * 3,
              left: TSizes.pd,
              right: TSizes.pd,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Appbar
                TCustomAppbar(),
                SizedBox(height: TSizes.p16),

                // Heading
                TCustomText(
                  text: 'To-Do Lists',
                ),
                SizedBox(height: TSizes.p16 * 2),

                // Random Quote
                RandomQuote(
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
