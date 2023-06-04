import 'package:pit_box/features/feed_section/data/models/news_feed_model.dart';

abstract class NewsFeedLocalDataSource {
  Future<NewsFeedModel> getLastNewsFeed();
  
  Future<void> cacheNewsFeed(NewsFeedModel FeedtoCache);
}
