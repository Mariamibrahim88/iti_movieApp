import 'package:equatable/equatable.dart';

sealed class TvDetailsEvent extends Equatable {
  const TvDetailsEvent();
}

class GetTvDetailsEvent extends TvDetailsEvent {
  final dynamic id;
  const GetTvDetailsEvent(this.id);

  @override
  List<Object?> get props => [id];
}

class GetTvRecommendationEvent extends TvDetailsEvent {
  final dynamic id;
  const GetTvRecommendationEvent(this.id);
  @override
  List<Object> get props => [id];
}
