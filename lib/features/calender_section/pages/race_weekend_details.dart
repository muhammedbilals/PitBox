import 'package:flutter/material.dart';
import 'package:pit_box/core/constant/colors.dart';
import 'package:pit_box/core/constant/size.dart';
import 'package:pit_box/core/icons/box_icon_icons.dart';
import 'package:pit_box/utils/widgets/app_bar_widget.dart';

class RaceWeekendDetails extends StatelessWidget {
  const RaceWeekendDetails({super.key});

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
            )),
        body: Column(
          children: [
            Center(
              child: SizedBox(
                width: size.width * 0.9,
                height: size.width * 0.25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: bRadius10, top: bRadius5),
                      child: Text(
                        '02 - 04 JUN',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: colorwhite.withOpacity(0.5)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: bRadius10, top: bRadius5),
                          child: Text(
                            'SPANISH GP',
                            style: TextStyle(
                                fontSize: 35,
                                color: colorgreen,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: bRadius5),
                          child: SizedBox(
                              height: size.width * 0.09,
                              width: size.width * 0.1,
                              child: Image.asset(
                                  'assets/images/flag/netherlands_flag.png')),
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: bRadius10, top: bRadius5),
                      child: Text(
                        'Circuit de Barcelona-Catalunya',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: colorwhite.withOpacity(0.5)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: bRadius10),
                child: SizedBox(
                  width: size.width * 0.9,
                  height: size.width * 0.35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        width: size.width * 0.5,
                        'assets/images/spaintrack.png',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: size.width * 0.9,
                height: size.width * 0.4,
                decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor,
                    borderRadius: BorderRadius.circular(bRadius10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(bRadius10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '1991',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w900),
                              ),
                              Text(
                                'First Grand Prix',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: colorwhite.withOpacity(0.5)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(bRadius10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '66',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w900),
                              ),
                              Text(
                                'Number of Laps',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: colorwhite.withOpacity(0.5)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(bRadius10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '307.236',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 6),
                                    child: Text(
                                      'Km',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Race Distance',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: colorwhite.withOpacity(0.5)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(bRadius5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '5.513',
                                    style: TextStyle(
                                        color: colorgreen,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 6),
                                    child: Text(
                                      'Km',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Circuit Length',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: colorwhite.withOpacity(0.5)),
                              ),
                            ],
                          ),
                        ),
                      ],
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
