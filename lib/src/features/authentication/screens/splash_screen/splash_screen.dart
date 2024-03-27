import 'package:app_karengata/src/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Obx(
        () => AnimatedOpacity(
          duration: const Duration(milliseconds: 1500),
          opacity: splashController.animate.value ? 1 : 0,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(width: 120, height: 120, image: AssetImage(tDefaultLogo))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
