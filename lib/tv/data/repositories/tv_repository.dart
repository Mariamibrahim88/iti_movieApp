import 'package:dartz/dartz.dart';
import 'package:movie_iti/core/error/exceptions.dart';
import 'package:movie_iti/core/error/failures.dart';
import 'package:movie_iti/tv/data/data_source/base_tv_data_source.dart';
import 'package:movie_iti/tv/domain/entities/tv_entity.dart';
import 'package:movie_iti/tv/domain/repositories/base_tv_repository.dart';

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
}
