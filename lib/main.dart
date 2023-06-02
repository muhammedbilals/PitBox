import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pit_box/features/feed_section/data/constant/colors.dart';
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
          
          fontFamily: GoogleFonts.montserrat().fontFamily, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(background: colorblack),
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}
