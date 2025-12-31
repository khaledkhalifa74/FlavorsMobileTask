import 'package:flavors_mobile_task/features/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flavors Production',
      theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.green),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white, // title & icons color
        elevation: 0,
      ),
    ),
    home: const HomeScreen(),
    );
  }
}
