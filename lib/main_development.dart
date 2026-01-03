import 'package:flavors_mobile_task/core/theming/colors.dart';
import 'package:flavors_mobile_task/features/home/presentation/screens/enter_your_name_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flavors Development',
      theme: ThemeData(
          colorScheme: .fromSeed(seedColor: ColorsManager.kDevelopmentPrimary),
      textTheme: GoogleFonts.playfairDisplayTextTheme(),
      appBarTheme: const AppBarTheme(
        backgroundColor: ColorsManager.kDevelopmentPrimary,
        foregroundColor: ColorsManager.kWhite,
        elevation: 0,
      ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: ColorsManager.kDevelopmentPrimary,
            foregroundColor: ColorsManager.kWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
    ),
    home: const EnterYourNameScreen(),
    );
    }
}
