// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pit_box/core/constant/colors.dart';
import 'package:pit_box/features/calender_section/pages/race_calender_page.dart';
import 'package:pit_box/features/feed_section/presentation/pages/home_page.dart';
import 'package:pit_box/features/profile_section/presentation/profile_screen.dart';

import '../features/championship_section/presentation/championship_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key, this.pageIndex = 0});

  final int pageIndex;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int navbarIndex = widget.pageIndex;

  final _pages = [
    const HomePage(),
    ChampionShipScreen(),
    const RaceCalenderScreen(),
    const ProfileSceen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[navbarIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: navbarIndex != 0
                ? SvgPicture.asset("assets/icons/document.svg",
                    color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .unselectedItemColor!)
                : SvgPicture.asset(
                    
                    "assets/icons/document_filled.svg",
                    color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .selectedItemColor,
                  ),
            tooltip: 'Home',
            label: "",
          ),
          BottomNavigationBarItem(
            icon: navbarIndex != 1
                ? SvgPicture.asset(
                    "assets/icons/award.svg",
                    color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .unselectedItemColor,
                  )
                : SvgPicture.asset(
                    "assets/icons/award_filled.svg",
                    color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .selectedItemColor,
                  ),
            tooltip: 'Championship',
            label: "",
          ),
          BottomNavigationBarItem(
            icon: navbarIndex != 2
                ? SvgPicture.asset(
                    "assets/icons/calender.svg",
                    color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .unselectedItemColor,
                  )
                : SvgPicture.asset(
                    "assets/icons/calender_filled.svg",
                    color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .selectedItemColor,
                  ),
            tooltip: 'Categories',
            label: "",
          ),
          BottomNavigationBarItem(
            icon: navbarIndex != 3
                ? SvgPicture.asset(
                    "assets/icons/profile.svg",
                    color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .unselectedItemColor,
                  )
                : SvgPicture.asset(
                    "assets/icons/profile_filled.svg",
                    color: Theme.of(context)
                        .bottomNavigationBarTheme
                        .selectedItemColor,
                  ),
            tooltip: 'Profile',
            label: "",
          ),
        ],
        currentIndex: navbarIndex,
        showUnselectedLabels: true,
        iconSize: 20,
        selectedLabelStyle: const TextStyle(color: colorblack, fontSize: 12),
        unselectedLabelStyle:
            TextStyle(color: colorblack.withOpacity(0.5), fontSize: 12),
        onTap: (value) {
          setState(() {
            navbarIndex = value;
          });
        },
      ),
    );
  }
}
