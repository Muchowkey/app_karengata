import 'package:app_karengata/src/constants/image_strings.dart';
import 'package:app_karengata/src/constants/sizes.dart';
import 'package:app_karengata/src/constants/text_strings.dart';
import 'package:app_karengata/src/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common_widgets/form/form_header_widget.dart';
import 'widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child:  Column(
              children: [
                const FormHeaderWidget(
                  image: tDefaultLogo,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                ),
                const SignUpFormWidget(),
                Column(
                  children: [
                    const Text('OR'),
                    const SizedBox(height: tFormHeight - 10,),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: (){}, 
                        label: const Text(tSignInWithGoogle),
                      icon: const Image(image: AssetImage(tGoogleLogoImage), width: 20.0,), ),
                    ),
                    TextButton(
                      onPressed: () => Get.to(() => const LoginScreen()), 
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: tAlreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyLarge),
                            TextSpan(text: tLogin.toUpperCase()),
                            ]
                        ),
                      )
                      ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


