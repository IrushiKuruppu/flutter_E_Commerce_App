import 'package:e_commerce_app/features/authentication/screens/onbording/onboarding.dart';
import 'package:e_commerce_app/utils/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//use this class to setup themes, initial bindings, any animation
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
