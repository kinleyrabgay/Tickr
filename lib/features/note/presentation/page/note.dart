import 'package:flutter/material.dart';
import 'package:tickr/core/common/widgets/custom_tabs.dart';
import 'package:tickr/core/common/widgets/custom_text.dart';
import 'package:tickr/core/common/widgets/cutom_appbar.dart';
import 'package:tickr/core/common/widgets/gradient_background.dart';
import 'package:tickr/core/constants/size.dart';
import 'package:tickr/core/constants/tabs.dart';

class NotePage extends StatelessWidget {
  const NotePage({super.key});

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
                  text: 'Quickly Jot Down Notes',
                ),
                const SizedBox(height: TSizes.p16),

                // Tabs
                TCustomTabs(
                  tabs: listTabs,
                ),
                const SizedBox(height: TSizes.p16 * 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
