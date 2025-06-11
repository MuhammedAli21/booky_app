import 'package:booky_app/Feature/presentation/views/splash_screen.dart';
import 'package:booky_app/constents.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: KprimryColor),
      home: SplashScreen(),
    );
  }
}
