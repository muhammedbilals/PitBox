import 'dart:convert';

import 'package:pit_box/core/error/exceptions.dart';
import 'package:pit_box/features/feed_section/data/models/news_feed_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class NewsFeedLocalDataSource {
  Future<NewsFeedModel> getLastNewsFeed();

  Future<void> cacheNewsFeed(NewsFeedModel feedtoCache);
}

const CACHED_NUMBER_TRIVIA = 'CACHED_NUMBER_TRIVIA';

class NewsFeedLocalDataSourceImpl implements NewsFeedLocalDataSource {
  final SharedPreferences sharedPreference;

  NewsFeedLocalDataSourceImpl({required this.sharedPreference});
  @override
  Future<void> cacheNewsFeed(NewsFeedModel feedtoCache) {
   return sharedPreference.setString(CACHED_NUMBER_TRIVIA, json.encode(feedtoCache.toJson()));
  }

  @override
  Future<NewsFeedModel> getLastNewsFeed() {
    final jsonString = sharedPreference.getString(CACHED_NUMBER_TRIVIA);
    if (jsonString != null) {
      return Future.value(NewsFeedModel.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }
}
