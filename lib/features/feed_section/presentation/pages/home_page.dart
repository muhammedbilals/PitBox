import 'package:flutter/material.dart';
import 'package:pit_box/core/constant/custom_icons.dart';
import 'package:pit_box/core/constant/size.dart';
import 'package:pit_box/core/constant/colors.dart';
import 'package:pit_box/core/constant/sized_box.dart';
import 'package:pit_box/features/feed_section/presentation/pages/news_detailed_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NewsDetailedScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: Container(
                      width: size.width * 0.95,
                      height: size.height * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: colorgrey),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(bRadius10),
                            child: SizedBox(
                              width: size.width * 0.9,
                              height: size.width * 0.55,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child:
                                      Image.asset('assets/images/newsimg.png')),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: bRadius10),
                                child: Image.asset(
                                    'assets/images/skysportslogo.png'),
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
                                child:
                                    GestureDetector(child: CustomIcons.share),
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
                              IconButton(
                                  onPressed: () {}, icon: CustomIcons.like),
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
                                    onPressed: () {},
                                    icon: CustomIcons.dislike),
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
              ),
              Container(
                width: size.width * 0.9,
                height: size.height * 0.52,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: colorgrey),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(bRadius10),
                          child: CircleAvatar(
                            backgroundColor: colorblack,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Muhammed Bilal',
                              style: TextStyle(
                                  color: colorwhite,
                                  fontSize: fsize15,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '@maxhater07',
                              style: TextStyle(
                                  color: colorwhite.withOpacity(0.7),
                                  fontSize: fsize12,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
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
                                  'FOLLOW',
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
                    Padding(
                      padding: const EdgeInsets.only(
                          top: bRadius10, left: bRadius10, right: bRadius10),
                      child: SizedBox(
                        width: size.width * 0.9,
                        height: size.width * 0.55,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/images/newsimg.png')),
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
                        IconButton(onPressed: () {}, icon: CustomIcons.comment),
                        const Text(
                          '32',
                          style: TextStyle(
                              color: colorwhite,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
