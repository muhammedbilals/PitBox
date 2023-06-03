import 'package:equatable/equatable.dart';

class NewsFeed extends Equatable {
  final String? title;
  final String? description;
  final String? content;
  final String? url;
  final String? image;
  final String? publishedAt;
  final String? sourceName;

  NewsFeed({this.title, this.description, this.content, this.url, this.image, this.publishedAt, this.sourceName});
  @override
  List<Object> get props => [title!,description!,content!,url!,image!,publishedAt!,sourceName!];
}
