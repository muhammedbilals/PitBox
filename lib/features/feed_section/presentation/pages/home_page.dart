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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                width: size.width * 0.95,
                height: size.height * 0.21,
                decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor,
                    borderRadius: BorderRadius.circular(bRadius10)),
                child: Padding(
                  padding: const EdgeInsets.all(bRadius5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 6,
                            child: FittedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: bRadius10),
                                    child: Text(
                                      '02 - 04 JUN',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: bRadius10),
                                    child: Text(
                                      'SPAIN 2023',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: bRadius10),
                                    child: Text(
                                      'PRACTICE 3',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: bRadius5),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: bRadius5),
                                              child: Text(
                                                '02',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayLarge,
                                              ),
                                            ),
                                            Text(
                                              'HRS',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          ':',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: bRadius5),
                                              child: Text(
                                                '23',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayLarge,
                                              ),
                                            ),
                                            Text(
                                              'MIN',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          ':',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: bRadius5),
                                              child: Text(
                                                '37',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayLarge,
                                              ),
                                            ),
                                            Text(
                                              'SEC',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 7,
                            child: Padding(
                              padding: const EdgeInsets.all(bRadius10),
                              child: SizedBox(
                                height: size.width * 0.36,
                                width: size.width * 0.4,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Image.asset(
                                      'assets/images/spaintrack.png'),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                      height: 100,
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.green,
                      height: 100,
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                    ),
                  ),
                ],
              ),
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
                          borderRadius: BorderRadius.circular(bRadius10),
                          color: Theme.of(context).canvasColor),
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
                                      fontSize: fsize12,
                                      fontWeight: FontWeight.w500),
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
                                  fontSize: fsize15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: bRadius10),
                            child: Text(
                              'Citing safety concerns due to weather and flooding, F1 has canceled the 2023 Emilia Romagna Grand Prix',
                              style: TextStyle(
                                  fontSize: fsize12,
                                  fontWeight: FontWeight.w400),
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
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {}, icon: CustomIcons.comment),
                              const Text(
                                '32',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: size.width * 0.155, right: 10),
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
                width: size.width * 0.95,
                height: size.height * 0.52,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).canvasColor),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(bRadius10),
                          child: CircleAvatar(),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Muhammed Bilal',
                              style: TextStyle(
                                  fontSize: fsize15,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              '@maxhater07',
                              style: TextStyle(
                                  fontSize: fsize12,
                                  fontWeight: FontWeight.w500),
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
                            fontSize: fsize15, fontWeight: FontWeight.w600),
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
                                fontSize: 16, fontWeight: FontWeight.bold),
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
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        IconButton(onPressed: () {}, icon: CustomIcons.comment),
                        const Text(
                          '32',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
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
