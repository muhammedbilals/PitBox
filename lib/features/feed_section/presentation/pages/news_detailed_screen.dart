import 'package:flutter/material.dart';
import 'package:pit_box/utils/widgets/app_bar_widget.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/custom_icons.dart';
import '../../../../core/constant/size.dart';

class NewsDetailedScreen extends StatelessWidget {
  const NewsDetailedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(title: 'My Orders')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width,
              height: size.width * 0.7,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/images/newsimg.png')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: bRadius10),
                  child: Image.asset('assets/images/skysportslogo.png'),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: bRadius10),
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
                  padding: const EdgeInsets.symmetric(horizontal: bRadius10),
                  child: GestureDetector(child: CustomIcons.share),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(bRadius10),
              child: Text(
                'F1 announces the cancellation of the Emilia Romagna Grand Prix',
                style: TextStyle(
                    color: colorwhite,
                    fontSize: fsize20,
                    fontWeight: FontWeight.w900),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(bRadius10),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                style: TextStyle(
                    color: colorwhite,
                    fontSize: fsize15,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}
