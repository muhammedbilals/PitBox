import 'package:dartz/dartz.dart';
import 'package:pit_box/core/error/failure.dart';
import 'package:pit_box/core/platform/network_info.dart';
import 'package:pit_box/features/feed_section/data/datasources/news_feed_local_data_souces.dart';
import 'package:pit_box/features/feed_section/data/datasources/news_feed_remote_data_source.dart';
import 'package:pit_box/features/feed_section/domain/entities/news_feed.dart';
import 'package:pit_box/features/feed_section/domain/repositories/news_feed_repository.dart';

class NewsFeedRepositoryImpl implements NewsFeedRepository {
  final NewsFeedRemoteDataSource? newsFeedRemoteDataSource;
  final NewsFeedLocalDataSource? newsFeedLocaleDataSource;
  final NetworkInfo? networkInfo;

  NewsFeedRepositoryImpl({
    required this.newsFeedRemoteDataSource,
    required this.newsFeedLocaleDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, NewsFeed>> getDriverNews(String driver) {
    // TODO: implement getDriverNews
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NewsFeed>> getNews() {
    // TODO: implement getNews
    throw UnimplementedError();
  }
}
