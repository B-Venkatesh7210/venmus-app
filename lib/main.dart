import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:venmus_app/constants/colors.dart';
import 'package:venmus_app/constants/string_constants.dart';
import 'package:venmus_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: AnimatedSplashScreen(
        splash: Center(
          child: Image.asset(kLogoPath + 'venmusLogo.gif'),
        ),
        splashIconSize: double.maxFinite,
        backgroundColor: kSecondaryColor,
        duration: 4500,
        nextScreen: HomePage(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
