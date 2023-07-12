import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:twitter_clone_alpha/common/headline.dart';
import 'package:twitter_clone_alpha/common/large_button.dart';
import 'package:twitter_clone_alpha/features/auth/view/login_view.dart';
import 'package:twitter_clone_alpha/features/auth/widgets/auth_field.dart';
import 'package:twitter_clone_alpha/theme/pallete.dart';

import '../../../constants/constants.dart';

class SignupView extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const LoginView(),
      );
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final emailController = TextEditingController();
  final passWordController = TextEditingController();
  final confirmPassWordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passWordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Lottie.asset(
                  AssetsConstants.twitterBird,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Headline(headline: 'Log in to twitter'),
                const SizedBox(
                  height: 20,
                ),
                AuthField(
                  controller: emailController,
                  obsecureText: false,
                  hintText: 'Email',
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthField(
                  controller: passWordController,
                  obsecureText: true,
                  hintText: 'Password',
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthField(
                  controller: passWordController,
                  obsecureText: true,
                  hintText: 'Confirm Password',
                ),
                const SizedBox(
                  height: 25,
                ),
                LargeButton(onTap: () {}, text: 'Sign up'),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                      text: 'Already have an account? ',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                            text: 'Log in',
                            style: const TextStyle(
                                fontSize: 16, color: Pallete.blueColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushReplacement(
                                  context,
                                  LoginView.route(),
                                );
                              }),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
