import 'package:flutter/material.dart';
import 'package:splashapp/core/theme/light_theme.dart';

import 'widget/splash_screen.dart';
import 'feature/splashPage/splash_screen_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LighTheme().theme,
      home: const SplashScreen(),
    );
  }
}
