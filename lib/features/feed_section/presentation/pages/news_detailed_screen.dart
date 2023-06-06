import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pit_box/utils/widgets/app_bar_widget.dart';
import '../widgets/load_news_details.dart';

class NewsDetailedScreen extends StatelessWidget {
  const NewsDetailedScreen(
      {super.key,
      required this.headLine,
      required this.imageUrl,
      required this.articleLink});

  final String headLine;
  final String imageUrl;
  final String articleLink;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50), child: AppBarWidget(title: '')),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width,
                height: size.width * 0.7,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Hero(
                    tag: 'image_$imageUrl',
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Center(
                        child: Row(
                          children: [const Icon(Icons.error), Text(error)],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              LoadNewsDetailsWidget(
                headLine: headLine,
                articleLink: articleLink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
