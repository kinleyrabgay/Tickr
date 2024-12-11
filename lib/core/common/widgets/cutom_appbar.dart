import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tickr/core/common/widgets/circular_image.dart';
import 'package:tickr/core/common/widgets/custom_icon_button.dart';
import 'package:tickr/core/constants/color.dart';
import 'package:tickr/core/constants/size.dart';
import 'dart:ui'; // Import for BackdropFilter

class TCustomAppbar extends StatelessWidget {
  const TCustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: TColors.secondaryGradient,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 0.3,
                sigmaY: 0.3,
              ), // Adjust the blur intensity
              child: Container(
                color: Colors.black.withOpacity(0),
              ),
            ),
          ),
          // Content of the app bar
          const Padding(
            padding: EdgeInsets.all(TSizes.p10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Image
                TCircularImage(
                  image:
                      'https://miro.medium.com/v2/resize:fit:646/1*BxTA9zYVYtTwwWdSm7drOw.jpeg',
                  width: 55,
                  height: 55,
                  borderRadius: 55,
                  fit: BoxFit.cover,
                  isNetworkImage: true,
                ),
                Row(
                  children: [
                    // Search button
                    CustomIconButton(
                      icon: Iconsax.search_status,
                    ),
                    SizedBox(width: TSizes.p8),

                    // Add button
                    CustomIconButton(
                      icon: Iconsax.add,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
