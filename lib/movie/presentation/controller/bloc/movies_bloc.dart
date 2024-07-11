import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_iti/core/utils/functions/enums.dart';
import 'package:movie_iti/movie/domain/use_cases/get_now_playing_movie_use_case.dart';
import 'package:movie_iti/movie/domain/use_cases/get_popular_movies_use_case.dart';
import 'package:movie_iti/movie/domain/use_cases/get_top_rated_movie_use_case.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_event.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUsecase getNowPlayingMoviesUsecase;
  final GetPopularMoviesUasecase getPopularMoviesUasecase;
  final GetTopMoviesUasecase getTopMoviesUasecase;
  MoviesBloc(this.getNowPlayingMoviesUsecase, this.getPopularMoviesUasecase,
      this.getTopMoviesUasecase)
      : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingMoviesUsecase.execute();
      result.fold(
          (l) => emit(state.copyWith(
              nowPlayingState: RequestState.error,
              nowPlayingMessage: l.message)),
          (r) => emit(state.copyWith(
              nowPlayingMovies: r, nowPlayingState: RequestState.loaded)));
    });

    on<GetPopularMoviesEvent>((event, emit) async {
      final result = await getPopularMoviesUasecase.execute();

      result.fold(
          (l) => emit(state.copyWith(
              popularState: RequestState.error, populareMessage: l.message)),
          (r) => emit(state.copyWith(
              popularMovies: r, popularState: RequestState.loaded)));
    });

    on<GetTopRatedMoviesEvent>((event, emit) async {
      final result = await getTopMoviesUasecase.execute();
      result.fold(
          (l) => emit(state.copyWith(
              topRatedState: RequestState.error, topRatedMessage: l.message)),
          (r) => emit(state.copyWith(
              topRatedMovies: r, topRatedState: RequestState.loaded)));
    });
  }
}
