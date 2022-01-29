// ignore_for_file: use_key_in_widget_constructors, annotate_overrides, prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'Screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}