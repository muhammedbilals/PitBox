import 'package:equatable/equatable.dart';

class NewsFeedScraped extends Equatable {
  final String? headLine;
  final String? articleLink;
  final String? imageUrl;

  const NewsFeedScraped({
    required this.headLine,
    required this.articleLink,
    required this.imageUrl,
  });
  @override
  List<Object> get props => [headLine!, articleLink!, imageUrl!];
}
