import 'package:dartz/dartz.dart';
import 'package:movie_iti/core/error/exceptions.dart';
import 'package:movie_iti/core/error/failures.dart';
import 'package:movie_iti/tv/data/data_source/base_tv_data_source.dart';
import 'package:movie_iti/tv/domain/entities/Tv_datails_entity.dart';
import 'package:movie_iti/tv/domain/entities/recommendation_tv_entity.dart';
import 'package:movie_iti/tv/domain/entities/tv_entity.dart';
import 'package:movie_iti/tv/domain/repositories/base_tv_repository.dart';
import 'package:movie_iti/tv/domain/use_cases/get_recommended_use_case.dart';
import 'package:movie_iti/tv/domain/use_cases/get_tv_details_use_case.dart';

class TvRepository extends BaseTvRepository {
  final BaseTvDataSource baseTvDataSource;

  TvRepository(this.baseTvDataSource);

  @override
  Future<Either<Failure, List<TvEntity>>> getOnTheAirTv() async {
    final result = await baseTvDataSource.getOnTheAirTv();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<TvEntity>>> getPopularTv() async {
    final result = await baseTvDataSource.getPopularTv();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<TvEntity>>> getTopRatedTv() async {
    final result = await baseTvDataSource.getTopRatedTv();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, TvDetail>> getTvDetails(
      TvDetailsParameters parameters) async {
    final result = await baseTvDataSource.getTvDetails(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<RecommendationTv>>> getRecommendation(
      RecommendationParameters parameters) async {
    final result = await baseTvDataSource.getRecommendation(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
