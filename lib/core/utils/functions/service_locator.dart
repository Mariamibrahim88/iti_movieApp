import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_iti/movie/data/data_source/remote_movie_data_source.dart';
import 'package:movie_iti/movie/data/repository/movies_repository.dart';
import 'package:movie_iti/movie/domain/repositories/base_movie_repository.dart';
import 'package:movie_iti/movie/domain/use_cases/get_movie_details_use_case.dart';
import 'package:movie_iti/movie/domain/use_cases/get_now_playing_movie_use_case.dart';
import 'package:movie_iti/movie/domain/use_cases/get_recommended_use_case.dart';
import 'package:movie_iti/movie/presentation/controller/bloc/movies_bloc.dart';
import 'package:movie_iti/movie/presentation/controller/details_bloc/movie_datails_bloc.dart';
import 'package:movie_iti/tv/data/data_source/base_tv_data_source.dart';
import 'package:movie_iti/tv/data/data_source/remote_tv_data_source.dart';
import 'package:movie_iti/tv/data/repositories/tv_repository.dart';
import 'package:movie_iti/tv/domain/repositories/base_tv_repository.dart';
import 'package:movie_iti/tv/domain/use_cases/on_the_air_tv_useCase.dart';
import 'package:movie_iti/tv/domain/use_cases/popular_tv_useCase.dart';
import 'package:movie_iti/tv/domain/use_cases/top_rated_tv_useCase.dart';
import 'package:movie_iti/tv/presentation/controller/bloc/tv_bloc.dart';

import '../../../movie/domain/use_cases/get_popular_movies_use_case.dart';
import '../../../movie/domain/use_cases/get_top_rated_movie_use_case.dart';

final sl = GetIt.instance;

class setupServiceLocator {
  void init() {
    //bloc

    sl.registerFactory(() => TvBloc(sl(), sl(), sl()));
    //usecase
    sl.registerLazySingleton(() => OnTheAirTvUseCase(sl()));
    sl.registerLazySingleton(() => PopularTvUseCase(sl()));
    sl.registerLazySingleton(() => TopRatedTvUseCase(sl()));

    /// Repository

    sl.registerLazySingleton<BaseTvRepository>(() => TvRepository(sl()));

    /// DATA SOURCE
    sl.registerLazySingleton<BaseTvDataSource>(() => RemoteTvDataSource());

    sl.registerFactory(() => MoviesBloc(sl(), sl(), sl()));

    sl.registerFactory(() => MovieDetailsBloc(sl(), sl()));

    sl.registerLazySingleton(() => GetNowPlayingMoviesUsecase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUasecase(sl()));
    sl.registerLazySingleton(() => GetTopMoviesUasecase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailsUsecase(sl()));
    sl.registerLazySingleton(() => GetRecommendationUsecase(sl()));

    sl.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(sl()));

    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
