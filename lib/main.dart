import 'package:flutter/material.dart';
import 'package:region_2025/ui/splash.dart';
import 'package:region_2025/ui/view/car_slide.dart';
import 'package:region_2025/ui/view/layout_view.dart';
import 'package:region_2025/ui/widget/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      home: CarSlide(),
      debugShowCheckedModeBanner: false,
    );
  }
}
