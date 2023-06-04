part of 'scrape_bloc.dart';


@immutable
abstract class ScrapeEvent extends Equatable {
  const ScrapeEvent();
}

class LoadScrapeDataEvent extends ScrapeEvent {
  @override
  List<Object?> get props => [];
}