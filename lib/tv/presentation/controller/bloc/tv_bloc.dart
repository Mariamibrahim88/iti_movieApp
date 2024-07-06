import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_iti/core/utils/functions/enums.dart';
import 'package:movie_iti/tv/domain/use_cases/on_the_air_tv_useCase.dart';
import 'package:movie_iti/tv/domain/use_cases/popular_tv_useCase.dart';
import 'package:movie_iti/tv/domain/use_cases/top_rated_tv_useCase.dart';

import '../../../domain/entities/tv_entity.dart';

part 'tv_event.dart';
part 'tv_state.dart';

class TvBloc extends Bloc<TvEvent, TvState> {
  final OnTheAirTvUseCase onTheAirTvUseCase;
  final PopularTvUseCase popularTvUseCase;
  final TopRatedTvUseCase topRatedTvUseCase;

  TvBloc(this.onTheAirTvUseCase, this.popularTvUseCase, this.topRatedTvUseCase)
      : super(const TvState()) {
    on<OnAirTvEvent>((event, emit) async {
      final result = await onTheAirTvUseCase.execute();
      //emit(const TvState(onAirtvState: RequestState.loaded));
      result.fold(
          (l) => emit(state.copyWith(
                onAirtvState: RequestState.error,
                onAirtvmessage: l.message,
              )),
          (r) => emit(state.copyWith(
                onAirtv: r,
                onAirtvState: RequestState.loaded,
              )));
    });

    on<GetPopularTvEvent>((event, emit) async {
      final result = await popularTvUseCase.execute();
      // emit(const TvState(populatTvState: RequestState.loaded));

      result.fold(
          (l) => emit(state.copyWith(
                populatTvState: RequestState.error,
                populatTvmessage: l.message,
              )),
          (r) => emit(state.copyWith(
                populatTv: r,
                populatTvState: RequestState.loaded,
              )));
    });
    on<GetTopRatedTvEvent>((event, emit) async {
      final result = await topRatedTvUseCase.execute();
      //emit(const TvState(topRatedTvState: RequestState.loaded));

      result.fold(
          (l) => emit(state.copyWith(
                topRatedTvState: RequestState.error,
                topRatedTvmessage: l.message,
              )),
          (r) => emit(state.copyWith(
                topRatedTv: r,
                topRatedTvState: RequestState.loaded,
              )));
    });
  }
}
