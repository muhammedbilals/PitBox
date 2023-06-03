import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pit_box/utils/bottom_navigation_bar.dart';

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
          // colorScheme:  ColorScheme(
          //   onPrimary: colorblack,
          //   onSecondary: colorwhite,
          //   error: colorgreen,
          //   onError: colorgreen,
          //   onBackground: ,
          //   secondary: colorwhite,
          //     primary: colorblack,
          //     brightness: Brightness.dark,
          //     background: colorblack),
        ),
        debugShowCheckedModeBanner: false,
        home: const BottomNavBar());
  }
}
