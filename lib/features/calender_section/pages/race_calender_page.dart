import 'package:flutter/material.dart';
import 'package:pit_box/core/constant/colors.dart';
import 'package:pit_box/core/icons/custom_icon_icons.dart';

import 'package:pit_box/utils/widgets/app_bar_widget.dart';

class RaceCalenderScreen extends StatelessWidget {
  const RaceCalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: size,
            child: const AppBarWidget(
              title: '',
            )),
        body: const Center(
          child: Column(
            children: [
              Text(
                'data',
                style: TextStyle(color: colorwhite),
              ),
              Icon(
                CustomIcon.search,
                color: colorwhite,
              )
            ],
          ),
        ),
      ),
    );
  }
}
