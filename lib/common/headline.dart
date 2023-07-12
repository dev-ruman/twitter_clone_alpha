import 'package:flutter/material.dart';
import 'package:twitter_clone_alpha/theme/pallete.dart';

class Headline extends StatelessWidget {
  final String headline;
  final Color textColor;
  const Headline(
      {super.key, required this.headline, this.textColor = Pallete.whiteColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      headline,
      style: TextStyle(
        fontSize: 24,
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
