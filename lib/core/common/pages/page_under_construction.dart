import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tickr/core/constants/image.dart';

class TPageUnderConstruction extends StatelessWidget {
  const TPageUnderConstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Lottie.asset(
            TImages.pageUnderConstruction,
          ),
        ),
      ),
    );
  }
}
