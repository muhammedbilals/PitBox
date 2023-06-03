import 'package:dartz/dartz.dart';
import 'package:pit_box/core/error/failure.dart';
import 'package:pit_box/core/usecases/usecases.dart';
import 'package:pit_box/features/feed_section/domain/entities/news_feed.dart';
import 'package:pit_box/features/feed_section/domain/repositories/news_feed_repository.dart';

class GetNews implements UseCase<NewsFeed, NoParams> {
  final NewsFeedRepository repository;

  GetNews(this.repository);
  @override
  Future<Either<Failure, NewsFeed>> call(NoParams params) async {
    return await repository.getnews();
  }
}

