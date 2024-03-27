import 'package:app_karengata/src/constants/image_strings.dart';
import 'package:app_karengata/src/constants/sizes.dart';
import 'package:app_karengata/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login/login_screen.dart';
import '../signup/sign_up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(height: height * 0.25, image: const AssetImage(tDefaultLogo)),
            Column(
              children: [
                Text(
                  tAppTitle,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  tAppTagline,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Get.to(() => const LoginScreen()),
                    child: Text(
                      tLogin.toUpperCase(),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const SignUpScreen()),
                    child: Text(
                      tSignup.toUpperCase(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
