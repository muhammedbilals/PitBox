part of 'news_feed_bloc.dart';

abstract class NewsFeedState extends Equatable {
  const NewsFeedState();

  @override
  List<Object> get props => [];
}

class NewsFeedInitial extends NewsFeedState {}

class Empty extends NewsFeedState {}

class Loading extends NewsFeedState {}

class Loaded extends NewsFeedState {
  final NewsFeed newsFeed;

  const Loaded({required this.newsFeed});

  @override
  List<Object> get props => [newsFeed];
}
class Error extends NewsFeedState {
  final String message;

   Error({required this.message});

  @override
  List<Object> get props => [message];
}
