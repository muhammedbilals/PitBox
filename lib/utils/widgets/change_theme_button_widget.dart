import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pit_box/core/themes/bloc/theme_bloc.dart';
import 'package:pit_box/core/themes/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangeThemeButtonWidget extends StatefulWidget {
  const ChangeThemeButtonWidget({super.key});

  @override
  State<ChangeThemeButtonWidget> createState() =>
      _ChangeThemeButtonWidgetState();
}

class _ChangeThemeButtonWidgetState extends State<ChangeThemeButtonWidget> {
  bool isDarkMode = false;

  @override
  void initState() {
    super.initState();
    getSharedPrefValue();
  }

  void getSharedPrefValue() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isDarkMode = prefs.getBool('isDarkMode') ?? false;
    setState(() {
      isDarkMode;
    });
  }

  setPrefValue(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkMode', value);
  }

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: isDarkMode,
      onChanged: (value) async {
        setState(() {
          isDarkMode = value;
        });
        await setPrefValue(value);
        final themeData = value
            ? appThemeData[AppTheme.darkTheme]!
            : appThemeData[AppTheme.lightTheme]!;
        context.read<ThemeBloc>().add(ChangeTheme(theme: themeData));
      },
    );
  }
}
