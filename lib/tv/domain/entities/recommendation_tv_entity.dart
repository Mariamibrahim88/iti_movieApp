import 'package:equatable/equatable.dart';

class RecommendationTv extends Equatable {
  final String? backdropPath;
  final int id;

  const RecommendationTv({this.backdropPath, required this.id});

  @override
  List<Object?> get props => [backdropPath, id];
}
