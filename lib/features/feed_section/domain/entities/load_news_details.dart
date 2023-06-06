import 'package:equatable/equatable.dart';

class LoadNewsDetails extends Equatable {
  final String? timeString;
  final List? paragraphList;


  const LoadNewsDetails({
    required this.timeString,
    required this.paragraphList,

  });
  @override
  List<Object> get props => [timeString!, paragraphList!];
}
