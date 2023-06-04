part of 'news_feed_bloc.dart';

abstract class NewsFeedEvent extends Equatable {
  const NewsFeedEvent();

  @override
  List<Object> get props => [];
}

class GetNewsFeedDriver extends NewsFeedEvent {
  final String driver;

  const GetNewsFeedDriver({required this.driver});
    @override
  List<Object> get props => [driver];
}
