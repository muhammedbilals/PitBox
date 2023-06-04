import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pit_box/features/feed_section/domain/entities/news_feed.dart';

part 'news_feed_event.dart';
part 'news_feed_state.dart';

class NewsFeedBloc extends Bloc<NewsFeedEvent, NewsFeedState> {
  NewsFeedBloc() : super(NewsFeedInitial()) {
    on<NewsFeedEvent>((event, emit) {});
  }
}
