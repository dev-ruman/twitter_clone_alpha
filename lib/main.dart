import 'package:flutter/material.dart';
import 'package:twitter_clone_alpha/features/auth/view/login_view.dart';
import 'package:twitter_clone_alpha/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: LoginView(),
    );
  }
}
