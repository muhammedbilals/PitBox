import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pit_box/features/feed_section/domain/entities/news_feed.dart';
import 'package:pit_box/features/feed_section/domain/usecases/get_driver_news.dart';

import 'package:pit_box/features/feed_section/domain/usecases/get_news.dart';

part 'news_feed_event.dart';
part 'news_feed_state.dart';

class NewsFeedBloc extends Bloc<NewsFeedEvent, NewsFeedState> {
  final GetNews getNews;
  final GetDriverNews? getDriverNews;

  NewsFeedBloc(super.initialState,
      {required this.getNews, required this.getDriverNews});

  // NewsFeedBloc() : super(NewsFeedInitial()) {
  //   on<NewsFeedEvent>((event, emit) {});
  // }
  // @override
  // NewsFeedState get initialState => Empty();

  // @override
  // Stream<NewsFeedState> mapEventToState(NewsFeedEvent event) async* {
  //   if (event is GetDriverNews) {
  //     final newsEither = await getNews.repository.getNews();
  //     yield newsEither.fold(
  //       (error) => Error(message: error.toString()),
  //       (getNews) {
  //         return GetNewsFeedDriver(Params(text: getNews));
  //       },
  //     );
  //   }
  // }
}
