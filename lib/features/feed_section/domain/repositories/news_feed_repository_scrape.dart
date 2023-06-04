import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:pit_box/features/feed_section/domain/entities/news_feed_scrape.dart';
import 'package:html/parser.dart' as parser;

class NewsFeedScrapedRepository {
  String newsUrl = "https://www.formula1.com/en/latest/all.html";
  final dio = Dio();

  Future<List<NewsFeedScraped>> getNewsData() async {
    Response<dynamic> response;

    try {
      response = await dio.get(newsUrl);
      final html = parser.parse(response.data);

      List<String>? headlineList = html
          .querySelectorAll(
              'div > div.row.js-load-more-container > div > a > div.f1-cc--caption > p.no-margin.f1--s')
          .map((element) => element.text)
          .toList();

      List<String?> imageUrlList = html
          .querySelectorAll('a > div.f1-cc--image > picture > img')
          .map((element) => element.attributes['data-src'])
          .toList();

      List<String?> articleLinkList = html
          .querySelectorAll('div.row.js-load-more-container > div > a')
          .map((element) => element.attributes['href'])
          .toList();

      List<NewsFeedScraped>? newsDataList = [];

      for (int i = 0; i < headlineList.length; i++) {
        final item = NewsFeedScraped(
          imageUrl: imageUrlList[i],
          articleLink: articleLinkList[i],
          headLine: headlineList[i],
        );
        newsDataList.add(item);
      }
      return newsDataList;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
