import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_iti/tv/data/data_source/base_tv_data_source.dart';
import 'package:movie_iti/tv/data/data_source/remote_tv_data_source.dart';
import 'package:movie_iti/tv/data/repositories/tv_repository.dart';
import 'package:movie_iti/tv/domain/repositories/base_tv_repository.dart';
import 'package:movie_iti/tv/domain/use_cases/on_the_air_tv_useCase.dart';
import 'package:movie_iti/tv/domain/use_cases/popular_tv_useCase.dart';
import 'package:movie_iti/tv/domain/use_cases/top_rated_tv_useCase.dart';
import 'package:movie_iti/tv/presentation/controller/bloc/tv_bloc.dart';

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
  }
}
