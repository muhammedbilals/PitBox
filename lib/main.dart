import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pit_box/features/feed_section/presentation/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: GoogleFonts.montserrat().fontFamily,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}
