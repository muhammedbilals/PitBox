import 'package:flutter/material.dart';
import 'package:pit_box/core/constant/colors.dart';
import 'package:pit_box/core/constant/size.dart';
import 'package:pit_box/core/icons/box_icon_icons.dart';
import 'package:pit_box/features/calender_section/pages/race_weekend_details.dart';

import 'package:pit_box/utils/widgets/app_bar_widget.dart';

class RaceCalenderScreen extends StatelessWidget {
  const RaceCalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarWidget(
            title: '',
            leadingIcon: true,
            icons: Icon(BoxIcon.more_circle),
          ),
        ),
        body: Column(
          children: [
            Center(
              child: SizedBox(
                width: size.width,
                height: size.width * 0.3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(bRadius10),
                      child: Text(
                        '2',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RaceWeekendDetails(),
                            ));
                      },
                      child: Column(
                        children: [
                          Container(
                            width: size.width * 0.88,
                            height: size.width * 0.3,
                            decoration: BoxDecoration(
                                color: Theme.of(context).canvasColor,
                                borderRadius: BorderRadius.circular(bRadius10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: bRadius10, top: bRadius10),
                                        child: Text(
                                          'Round 10',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: bRadius10, top: bRadius5),
                                        child: Text(
                                          'SPANISH GP',
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: colorgreen,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: bRadius10, top: bRadius5),
                                        child: Text(
                                          'Circuit de Barcelona-Catalunya',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  colorwhite.withOpacity(0.5)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: bRadius10, top: bRadius5),
                                        child: Text(
                                          '02 - 04 JUN',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300,
                                              color:
                                                  colorwhite.withOpacity(0.5)),
                                        ),
                                      ),
                                    ]),
                                Image.asset(
                                  'assets/images/spaintrack.png',
                                  width: size.width * 0.25,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
