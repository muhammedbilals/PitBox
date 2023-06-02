import 'package:flutter/material.dart';
import 'package:pit_box/core/constant/colors.dart';
import 'package:pit_box/core/constant/custom_icons.dart';
import 'package:pit_box/features/feed_section/presentation/pages/home_page.dart';

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
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[navbarIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: colorblack,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: navbarIndex != 0
                ? CustomIcons.document
                : CustomIcons.documentFilled,
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: navbarIndex != 1
                ? CustomIcons.message
                : CustomIcons.messageFilled,
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon:
                navbarIndex != 2 ? CustomIcons.award : CustomIcons.awardFilled,
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: navbarIndex != 3
                ? CustomIcons.calender
                : CustomIcons.calenderFilled,
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: navbarIndex != 4
                ? CustomIcons.profile
                : CustomIcons.profileFilled,
            label: 'Profile',
          ),
        ],
        currentIndex: navbarIndex,
        selectedItemColor: colorwhite,
        showUnselectedLabels: true,
        iconSize: 20,
        unselectedItemColor: Colors.grey,
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