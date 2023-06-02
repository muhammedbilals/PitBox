import 'package:flutter/material.dart';
import 'package:pit_box/core/constant/size.dart';
import 'package:pit_box/core/constant/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorblack,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Container(
                  width: size.width * 0.9,
                  height: size.height * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colorgray),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(bRadius10),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/images/newsimg.png')),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(bRadius10),
                        child: Text(
                          'F1 announces the cancellation of the Emilia Romagna Grand Prix',
                          style: TextStyle(
                              fontSize: fsize15, fontWeight: FontWeight.w900),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: bRadius10),
                        child: Text(
                          'Citing safety concerns due to weather and flooding, F1 has canceled the 2023 Emilia Romagna Grand Prix',
                          style: TextStyle(
                              fontSize: fsize12, fontWeight: FontWeight.w200),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
