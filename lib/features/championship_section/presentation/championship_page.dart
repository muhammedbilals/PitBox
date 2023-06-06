import 'package:flutter/material.dart';
import 'package:pit_box/core/constant/size.dart';
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
                Placeholder(
                  child: SizedBox(
                    width: size.width,
                    height: size.width * 0.4,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wBox8,
                        Padding(
                          padding: const EdgeInsets.all(bRadius10),
                          child: SizedBox(
                            height: size.width * 0.10,
                            width: size.width * 0.10,
                            child: Text(
                              "1",
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            StrokeText(
                              text: "MAX",
                              strokeColor:
                                  Theme.of(context).secondaryHeaderColor,
                              textStyle: TextStyle(
                                  fontSize: 18,
                                  color: Theme.of(context).primaryColor),
                              strokeWidth: 3,
                            ),
                            Column(
                              children: [
                                Text(
                                  "VERSTAPPEN",
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .bottomNavigationBarTheme
                                        .selectedItemColor,
                                  ),
                                ),
                              ],
                            ),
                            Text("RedBull Racing",
                                style: Theme.of(context).textTheme.bodySmall),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "265",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                                const Text("PTS"),
                                hBox5,
                              ],
                            ),
                            wBox25,
                            SizedBox(
                              height: 25,
                              child: Image.asset(
                                  "assets/images/flag/netherlands_flag.png"),
                            ),
                            hBox5,
                          ],
                        ),
                        wBox8,
                        SizedBox(
                          height: size.height * 0.15,
                          width: size.height * 0.15,
                          child: Stack(
                            children: [
                              Image.asset(
                                  'assets/images/team_logo/redbull.png'),
                              Image.asset(
                                driverImageList[0],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
