import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pit_box/features/feed_section/domain/entities/news_feed_scrape.dart';
import 'package:pit_box/features/feed_section/domain/repositories/news_feed_repository_scrape.dart';

part 'scrape_event.dart';
part 'scrape_state.dart';

class ScrapeBloc extends Bloc<ScrapeEvent, ScrapeState> {
  final NewsFeedScrapedRepository _newsDataRepository;

  ScrapeBloc(this._newsDataRepository) : super(ScrapeDataLoadingState()) {
    on<LoadScrapeDataEvent>((event, emit) async {
      try {
        final newsData = await _newsDataRepository.getNewsData();
        emit(ScrapeDataLoadedState(newsData));
      } catch (e) {
        emit(ScrapeDataErrorState(e.toString()));
      }
    });
  }
}
