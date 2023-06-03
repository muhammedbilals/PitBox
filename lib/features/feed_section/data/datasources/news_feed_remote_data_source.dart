import 'package:pit_box/features/feed_section/data/models/news_feed_model.dart';

abstract class NewsFeedRemoteDataSource {
  Future<NewsFeedModel> getNews();
  Future<NewsFeedModel> getDriverNews(String driver);
}
