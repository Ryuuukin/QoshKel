import "package:QoshKel/features/authentication/screens/onboarding/onboarding.dart";
import "package:flutter/material.dart";
import "package:QoshKel/utils/theme/theme.dart";
import "package:get/get.dart";

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: QKAppTheme.lightTheme,
      darkTheme: QKAppTheme.darkTheme,
      home: const OnboardingScreen(),

    );
  }
}