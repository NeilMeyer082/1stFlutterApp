import 'package:flutter/material.dart';
// import 'package:flutter/animation.dart';
import 'home.dart';

void main() {runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  // This is the root of your application.

  @override Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}