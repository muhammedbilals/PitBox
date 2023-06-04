import 'package:dartz/dartz.dart';
import 'package:pit_box/core/error/exceptions.dart';
import 'package:pit_box/core/error/failure.dart';
import 'package:pit_box/core/network/network_info.dart';
import 'package:pit_box/features/feed_section/data/datasources/news_feed_local_data_souces.dart';
import 'package:pit_box/features/feed_section/data/datasources/news_feed_remote_data_source.dart';
import 'package:pit_box/features/feed_section/data/models/news_feed_model.dart';
import 'package:pit_box/features/feed_section/domain/entities/news_feed.dart';
import 'package:pit_box/features/feed_section/domain/repositories/news_feed_repository.dart';
//TODO might get error because changes NewsFeed to NewsfeedModel
typedef _DriverNewsOrNewsFeed = Future<NewsFeedModel> Function();

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
  Future<Either<Failure, NewsFeed>> getDriverNews(String driver) async {
    return await _getNewsFeed(() {
      return newsFeedRemoteDataSource!.getDriverNews(driver);
    });
    // return Left(NoConnectionFailure());
  }

  @override
  Future<Either<Failure, NewsFeed>> getNews() async {
    return await _getNewsFeed(() {
      return newsFeedRemoteDataSource!.getNews();
    });
  }

  Future<Either<Failure, NewsFeed>> _getNewsFeed(
      
      _DriverNewsOrNewsFeed getNewsOrDriverNews) async {
    if (await networkInfo!.isConnected) {
      try {
        final remoteNewsFeed = await getNewsOrDriverNews();
        newsFeedLocaleDataSource!.cacheNewsFeed(remoteNewsFeed);
        return Right(remoteNewsFeed);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localNewsFeed = await newsFeedLocaleDataSource!.getLastNewsFeed();
        return right(localNewsFeed);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
