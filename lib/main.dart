import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_nike/presentation/nft_screen.dart/nft_screen.dart';
import 'package:nft_nike/presentation/splash/splash_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.overpass(
            fontSize: 80,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
          bodyMedium: GoogleFonts.overpass(
            fontSize: 40,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
          bodySmall: GoogleFonts.overpass(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          displaySmall: GoogleFonts.overpass(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Colors.white.withOpacity(0.6),
          ),
          labelSmall: GoogleFonts.overpass(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          labelMedium: GoogleFonts.overpass(
            fontSize: 14,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
          titleMedium: GoogleFonts.overpass(
            fontSize: 26,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
          titleLarge: GoogleFonts.overpass(
            fontSize: 55,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
          displayMedium: GoogleFonts.overpass(
            fontSize: 45,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
          headlineMedium: GoogleFonts.overpass(
            fontSize: 19,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
      ),
      home: const SplashScreen(),
      title: 'NFT Nike',
    );
  }
}
