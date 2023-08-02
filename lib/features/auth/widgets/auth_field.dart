import 'package:flutter/material.dart';
import 'package:twitter_clone_alpha/theme/pallete.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final bool obsecureText;
  final String hintText;
  const AuthField({
    super.key,
    required this.controller,
    required this.obsecureText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Pallete.blueColor,
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(
              color: Pallete.greyColor,
            ),
          ),
          contentPadding: const EdgeInsets.all(15),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 18,
          )),
    );
  }
}
