import 'package:flutter/material.dart';
import 'package:pit_box/core/icons/box_icon_icons.dart';
import 'package:pit_box/utils/widgets/app_bar_widget.dart';

class DriverDetails extends StatelessWidget {
  const DriverDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBarWidget(
              title: 'Charles Leclerc',
              leadingIcon: true,
              icons: Icon(BoxIcon.more_circle),
            )),
            body: Column(
              children: [
                
              ],
            ),
      ),
    );
  }
}
