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
      title: 'Flavors Production',
      theme: ThemeData(
          colorScheme: .fromSeed(seedColor: ColorsManager.kProductionPrimary),
      textTheme: GoogleFonts.ibmPlexSansArabicTextTheme(),
      appBarTheme: const AppBarTheme(
        backgroundColor: ColorsManager.kProductionPrimary,
        foregroundColor: ColorsManager.kWhite,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: ColorsManager.kProductionPrimary,
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
