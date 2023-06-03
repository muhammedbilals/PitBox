import 'package:flutter/material.dart';
import 'package:pit_box/utils/bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

import 'core/themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        return MaterialApp(
            themeMode: ThemeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.lightTheme,
            debugShowCheckedModeBanner: false,
            home: const BottomNavBar());
      },
    );
  }
}
