import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pit_box/core/error/failure.dart';
import 'package:pit_box/core/usecases/usecases.dart';
import 'package:pit_box/features/feed_section/domain/entities/news_feed.dart';
import 'package:pit_box/features/feed_section/domain/repositories/news_feed_repository.dart';

class GetDriverNews implements UseCase<NewsFeed,Params>{
  final NewsFeedRepository repository;

  GetDriverNews(this.repository);

  Future<Either<Failure, NewsFeed>> call(
    Params? params
  ) async {
    return await repository.getDriverNews(params!.text!);
  }
}
class Params extends Equatable {
  final String? text;

  const Params({this.text});
    @override
  List<Object> get props => [text!];
}
