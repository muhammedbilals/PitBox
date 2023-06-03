import 'package:pit_box/features/feed_section/domain/entities/news_feed.dart';

class NewsFeedModel extends NewsFeed {
  NewsFeedModel(
      {final String? title,
      final String? description,
      final String? content,
      final String? url,
      final String? image,
      final String? publishedAt,
      final String? sourceName})
      : super(
            title: title,
            description: description,
            content: content,
            url: url,
            image: image,
            publishedAt: publishedAt,
            sourceName: sourceName);

  factory NewsFeedModel.fromJson(Map<String, dynamic> json) {
    return NewsFeedModel(
      title: json['title'],
      description: json['description'],
      content: json['content'],
      url: json['url'],
      image: json['image'],
      publishedAt: json['publishedAt'],
      sourceName: json['sourceName'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'content': content,
      'url': url,
      'image': image,
      'publishedAt': publishedAt,
      'sourceName': sourceName
    };
  }
}
