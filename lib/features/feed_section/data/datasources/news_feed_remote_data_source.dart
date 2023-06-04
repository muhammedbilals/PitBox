import 'dart:convert';

import 'package:pit_box/core/error/exceptions.dart';
import 'package:pit_box/features/feed_section/core/constant.dart';
import 'package:pit_box/features/feed_section/data/models/news_feed_model.dart';
import 'package:http/http.dart' as http;

abstract class NewsFeedRemoteDataSource {
  Future<NewsFeedModel> getNews();
  Future<NewsFeedModel> getDriverNews(String driver);
}

class NewsFeedRemoteDataSourceImpl implements NewsFeedRemoteDataSource {
  final http.Client client;

  NewsFeedRemoteDataSourceImpl({required this.client});
  @override
  Future<NewsFeedModel> getDriverNews(String driver) async {
    final response =
        await client.get('url/uri' as Uri, headers: {'content-type': ''});
    //TODO impliment api jason format vedio:[9]--15:35
    if (response.statusCode == 200) {
      return NewsFeedModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }

  @override
  Future<NewsFeedModel> getNews() async {
    final response =
        await client.get('https://gnews.io/api/v4/top-headlines?category=formula1&apikey=$apiKey' as Uri , headers: {'content-type': 'application/json'});
    //TODO impliment api jason format vedio:[9]--15:35
    if (response.statusCode == 200) {
      return NewsFeedModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
