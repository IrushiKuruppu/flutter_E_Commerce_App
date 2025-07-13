import 'package:e_commerce_app/utils/themes/themes.dart';
import 'package:flutter/material.dart';

//use this class to setup themes, initial bindings, any animation
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
    );
  }
}
