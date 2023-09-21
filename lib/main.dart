import 'package:abr/First_Screen.dart';
import 'package:abr/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'Login_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: AnimatedSplashScreen(
                splash: Icons.account_balance,
              duration : 1000,
              splashTransition: SplashTransition.scaleTransition,
              backgroundColor: Colors.white,
              nextScreen: First_Screen(),
                  )
          );
        }
        );
  }
}




