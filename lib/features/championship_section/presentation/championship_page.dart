import 'package:flutter/material.dart';
import 'package:pit_box/core/constant/sized_box.dart';
import 'package:stroke_text/stroke_text.dart';

class ChampionShipScreen extends StatelessWidget {
  ChampionShipScreen({super.key});

  List driverImageList = [
    'assets/images/drivers/maxverstappen.png',
    'assets/images/drivers/fernandoalonso.png',
    'assets/images/drivers/lweishamilton.png',
    'assets/images/drivers/chalrlesleclerc.png',
    'assets/images/drivers/sergioperes.png'
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                hBox12,
                Text(
                  "All Drivers",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      flex: 1,
                      child: SizedBox(
                        height: size.height * 0.15,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "1",
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    wBox8,
                    Expanded(
                      flex: 7,
                      child: SizedBox(
                        child: SizedBox(
                          width: double.infinity,
                          child: FittedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    StrokeText(
                                      text: "MAX",
                                      strokeColor: Theme.of(context)
                                          .secondaryHeaderColor,
                                      textStyle: TextStyle(
                                          fontSize: 24,
                                          color:
                                              Theme.of(context).primaryColor),
                                      strokeWidth: 3,
                                    ),
                                    const Column(
                                      children: [
                                        Text(
                                          "VERSTAPPEN",
                                          style: TextStyle(
                                            fontSize: 36,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Divider(
                                          color: Colors.amber,
                                          thickness: 5,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Text("RedBull Racing"),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "265",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayMedium,
                                        ),
                                        const Column(
                                          children: [
                                            Text("PTS"),
                                            hBox5,
                                          ],
                                        ),
                                      ],
                                    ),
                                    wBox25,
                                    SizedBox(
                                      height: 25,
                                      child: Image.asset(
                                          "assets/images/flag/netherlands_flag.png"),
                                    ),
                                  ],
                                ),
                                hBox5,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    wBox8,
                    Expanded(
                      flex: 4,
                      // fit: FlexFit.tight,
                      child: SizedBox(
                        height: size.height * 0.15,
                        width: size.height * 0.15,
                        child: Stack(
                          children: [
                            Image.asset('assets/images/team_logo/redbull.png'),
                            Image.asset(
                              driverImageList[0],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
