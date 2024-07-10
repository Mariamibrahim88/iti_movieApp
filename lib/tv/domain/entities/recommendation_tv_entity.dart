import 'package:equatable/equatable.dart';

class RecommendationTv extends Equatable {
  final dynamic backdropPath;
  final dynamic id;

  const RecommendationTv({this.backdropPath, required this.id});

  @override
  List<Object?> get props => [backdropPath, id];
}