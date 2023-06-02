import 'package:flutter/material.dart';
import 'package:pit_box/core/constant/custom_icons.dart';
import 'package:pit_box/core/constant/size.dart';
import 'package:pit_box/core/constant/colors.dart';
import 'package:pit_box/core/constant/sized_box.dart';

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
                      color: colorgrey),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(bRadius10),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/images/newsimg.png')),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: bRadius10),
                            child:
                                Image.asset('assets/images/skysportslogo.png'),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: bRadius10),
                            child: Text(
                              '12 Days ago',
                              style: TextStyle(
                                  color: colorwhite,
                                  fontSize: fsize12,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: bRadius10),
                            child: GestureDetector(child: CustomIcons.dislike),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(bRadius10),
                        child: Text(
                          'F1 announces the cancellation of the Emilia Romagna Grand Prix',
                          style: TextStyle(
                              color: colorwhite,
                              fontSize: fsize15,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: bRadius10),
                        child: Text(
                          'Citing safety concerns due to weather and flooding, F1 has canceled the 2023 Emilia Romagna Grand Prix',
                          style: TextStyle(
                              color: colorwhite,
                              fontSize: fsize12,
                              fontWeight: FontWeight.w200),
                        ),
                      ),
                      hBox12,
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: CustomIcons.like),
                          SizedBox(
                            width: size.width * 0.03,
                            child: const Text(
                              '1',
                              style: TextStyle(
                                  color: colorwhite,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            child: IconButton(
                                onPressed: () {}, icon: CustomIcons.dislike),
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                            child: const Text(
                              '2',
                              style: TextStyle(
                                  color: colorwhite,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          IconButton(
                              onPressed: () {}, icon: CustomIcons.comment),
                          const Text(
                            '32',
                            style: TextStyle(
                                color: colorwhite,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.width * 0.12, right: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: colorgreen),
                              width: size.width * 0.24,
                              height: size.width * 0.07,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'READ MORE',
                                    style: TextStyle(
                                        color: colorwhite,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
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
          ],
        ),
      ),
    );
  }
}
