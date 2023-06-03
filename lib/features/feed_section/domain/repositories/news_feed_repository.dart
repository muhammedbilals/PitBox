import 'package:dartz/dartz.dart';
import 'package:pit_box/core/error/failure.dart';
import 'package:pit_box/features/feed_section/domain/entities/news_feed.dart';

abstract class NewsFeedRepository {
  Future<Either<Failure, NewsFeed>> getnews();
  Future<Either<Failure, NewsFeed>> getDriverNews(String driver);
}
