import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pit_box/core/themes/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(appThemeData[AppTheme.darkTheme]!)) {
    on<ThemeEvent>((event, emit) {
      if (event is ChangeTheme) {
        initializeTheme(emit);
      }
    });
  }
  void initializeTheme(Emitter<ThemeState> emit) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool isDarkMode = prefs.getBool('isDarkMode') ?? false;

    if (isDarkMode) {
      emit(ThemeState(appThemeData[AppTheme.darkTheme]!));
    } else {
      emit(ThemeState(appThemeData[AppTheme.lightTheme]!));
    }
  }
}
