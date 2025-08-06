import 'package:flutter/material.dart';
import 'package:notelab/home.dart';
import 'package:notelab/themes/darkMode.dart';
import 'package:notelab/themes/lightMode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoteLab',
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      darkTheme: darkMode,
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}
