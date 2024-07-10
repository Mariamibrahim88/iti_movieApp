import 'package:equatable/equatable.dart';
import 'package:movie_iti/core/utils/functions/enums.dart';

import 'package:movie_iti/tv/domain/entities/Tv_datails_entity.dart';
import 'package:movie_iti/tv/domain/entities/recommendation_tv_entity.dart';

class TvDetailsState extends Equatable {
  const TvDetailsState({
    this.tvDetail,
    this.tvDetailsState = RequestState.loading,
    this.tvDetailsMessage = '',
    this.recommendation = const [],
    this.recommendationState = RequestState.loading,
    this.recommendationMessage = '',
  });

  final TvDetail? tvDetail;
  final RequestState tvDetailsState;
  final String tvDetailsMessage;
  final List<RecommendationTv> recommendation;
  final RequestState recommendationState;
  final String recommendationMessage;

  TvDetailsState copyWith({
    TvDetail? tvDetail,
    RequestState? tvDetailsState,
    String? tvDetailsMessage,
    List<RecommendationTv>? recommendation,
    RequestState? recommendationState,
    String? recommendationMessage,
  }) {
    return TvDetailsState(
      tvDetail: tvDetail ?? this.tvDetail,
      tvDetailsState: tvDetailsState ?? this.tvDetailsState,
      tvDetailsMessage: tvDetailsMessage ?? this.tvDetailsMessage,
      recommendation: recommendation ?? this.recommendation,
      recommendationState: recommendationState ?? this.recommendationState,
      recommendationMessage:
          recommendationMessage ?? this.recommendationMessage,
    );
  }

  @override
  List<Object?> get props => [
        tvDetail,
        tvDetailsState,
        tvDetailsMessage,
        recommendation,
        recommendationState,
        recommendationMessage,
      ];
}
