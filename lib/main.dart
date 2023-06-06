import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pit_box/core/themes/bloc/theme_bloc.dart';
import 'package:pit_box/features/feed_section/domain/repositories/news_feed_repository_scrape.dart';
import 'package:pit_box/features/feed_section/presentation/scrape_bloc/scrape_bloc.dart';
import 'package:pit_box/utils/bottom_navigation_bar.dart';
import 'package:pit_box/utils/presentation/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
        BlocProvider(
          create: (context) => ScrapeBloc(
            NewsFeedScrapedRepository(),
          ),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: state.themeData,
            debugShowCheckedModeBanner: false,
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
