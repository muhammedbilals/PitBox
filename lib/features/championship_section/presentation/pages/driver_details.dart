import 'package:flutter/material.dart';
import 'package:pit_box/core/constant/colors.dart';
import 'package:pit_box/core/constant/size.dart';
import 'package:pit_box/core/constant/sized_box.dart';
import 'package:pit_box/core/icons/box_icon_icons.dart';
import 'package:pit_box/utils/widgets/app_bar_widget.dart';
import 'package:stroke_text/stroke_text.dart';

class DriverDetails extends StatelessWidget {
  const DriverDetails({super.key});

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
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                width: size.width * 0.9,
                height: size.width * 0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: bRadius5),
                      child: StrokeText(
                        strokeColor: Theme.of(context).secondaryHeaderColor,
                        strokeWidth: 2,
                        text: 'CHARLES',
                        textStyle: TextStyle(
                            fontSize: 30,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                    const Text(
                      'LECLREC',
                      style: TextStyle(
                          fontSize: 40,
                          color: colorgreen,
                          fontWeight: FontWeight.w800),
                    ),
                    Row(
                      children: [
                        Text(
                          '16',
                          style: TextStyle(
                              fontSize: 25,
                              color: Theme.of(context).secondaryHeaderColor,
                              fontWeight: FontWeight.w500),
                        ),
                        const VerticalDivider(
                          color: colorgreen,
                        ),
                        const Text(
                          'FERRARI',
                          style: TextStyle(
                              fontSize: 25,
                              color: colorgreen,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: size.width * 0.9,
              height: size.width * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(bRadius10),
                    child: SizedBox(
                      width: size.width * 0.35,
                      height: size.width * 0.45,
                      child: Image.asset(
                          'assets/images/drivers/charlesleclerc.png'),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.17,
                    height: size.width * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                                height: size.width * 0.1,
                                // width: size.width * 0.1,
                                'assets/images/team_logo/ferrarilogo.png'),
                            Text(
                              'Team',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: colorwhite.withOpacity(0.5)),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '25',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              'Podiums',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: colorwhite.withOpacity(0.5)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.17,
                    height: size.width * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(bRadius10),
                              child: Image.asset(
                                  height: size.width * 0.1,
                                  width: size.width * 0.1,
                                  'assets/images/flag/netherlands_flag.png'),
                            ),
                            Text(
                              'Country',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: colorwhite.withOpacity(0.5)),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '910',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              'Points',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: colorwhite.withOpacity(0.5)),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            hBox5,
            Center(
              child: Container(
                width: size.width * 0.9,
                height: size.width * 0.4,
                decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor,
                    borderRadius: BorderRadius.circular(bRadius10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: size.width * 0.35,
                      height: size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: bRadius10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '110',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  'GP entered',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: colorwhite.withOpacity(0.5)),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: bRadius10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '307.236',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  'Highest grid position',
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
                    ),
                    SizedBox(
                      width: size.width * 0.4,
                      height: size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: bRadius10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '1 (x5)',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  'Highest race finish',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: colorwhite.withOpacity(0.5)),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: bRadius10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'N/A',
                                  style: TextStyle(
                                      color: colorgreen,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  'World Championships',
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
                    ),
                  ],
                ),
              ),
            ),
            hBox5,
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const DriverDetails(),
                //   ),
                // );
              },
              child: Container(
                padding:
                    const EdgeInsets.only(left: bRadius20, right: bRadius10),
                width: size.width * 0.9,
                height: size.width * 0.15,
                decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor,
                    borderRadius: BorderRadius.circular(bRadius10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 4,
                      child: Text(
                        'Team',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: colorwhite.withOpacity(0.5)),
                      ),
                    ),
                    wBox20,
                    const Flexible(
                      flex: 5,
                      child: Text(
                        'FERRARI',
                        style: TextStyle(
                            color: colorgreen,
                            fontSize: 20,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    const Flexible(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: bRadius10),
                        child: Icon(BoxIcon.arrow_right),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
