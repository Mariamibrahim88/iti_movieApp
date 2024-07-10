import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_iti/core/utils/functions/enums.dart';
import 'package:movie_iti/tv/domain/use_cases/get_recommended_use_case.dart';
import 'package:movie_iti/tv/domain/use_cases/get_tv_details_use_case.dart';
import 'package:movie_iti/tv/presentation/controller/details_bloc/tv_details_event.dart';
import 'package:movie_iti/tv/presentation/controller/details_bloc/tv_details_state.dart';

class TvDetailsBloc extends Bloc<TvDetailsEvent, TvDetailsState> {
  TvDetailsBloc(this.getTvDetailsUseCase, this.getRecommendationUseCase)
      : super(const TvDetailsState()) {
    on<GetTvDetailsEvent>(_getTvDetails);
    on<GetTvRecommendationEvent>(_getRecommendation);
  }

  final GetTvDetailsUsecase getTvDetailsUseCase;
  final GetRecommendationUsecase getRecommendationUseCase;

  FutureOr<void> _getTvDetails(
      GetTvDetailsEvent event, Emitter<TvDetailsState> emit) async {
    final result = await getTvDetailsUseCase(TvDetailsParameters(
      TvId: event.id,
    ));

    result.fold(
      (l) => emit(state.copyWith(
        tvDetailsState: RequestState.error,
        tvDetailsMessage: l.message,
      )),
      (r) => emit(
        state.copyWith(
          tvDetail: r,
          tvDetailsState: RequestState.loaded,
        ),
      ),
    );
  }

  FutureOr<void> _getRecommendation(
      GetTvRecommendationEvent event, Emitter<TvDetailsState> emit) async {
    final result = await getRecommendationUseCase(
      RecommendationParameters(
        event.id,
      ),
    );
//GenresTv
//RecommendationTv
    result.fold(
      (l) => emit(state.copyWith(
        recommendationState: RequestState.error,
        recommendationMessage: l.message,
      )),
      (r) => emit(
        state.copyWith(
          recommendation: r,
          recommendationState: RequestState.loaded,
        ),
      ),
    );
  }
}
