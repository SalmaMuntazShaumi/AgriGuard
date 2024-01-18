import 'package:agri_guard/bottom_navbar.dart';
import 'package:agri_guard/pages/section/login.dart';
import 'package:agri_guard/pages/section/regis.dart';
import 'package:agri_guard/pages/splashScreen.dart';
import 'package:agri_guard/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      getPages: [
        GetPage(name: '/splash_screen', page: () => const SplashScreen()),
        GetPage(name: '/login', page: () => const LoginSection()),
        GetPage(name: '/regis', page: () => const RegisSection()),
        GetPage(name: '/dashboard', page: () => const BottomNavBar()),
      ],
    );
  }
}