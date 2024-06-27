import 'package:dartz/dartz.dart';
import 'package:movie_iti/tv/domain/entities/tv_entity.dart';

import '../../../core/error/failures.dart';

abstract class BaseTvRepository {
  Future<Either<Failure, List<TvEntity>>> getOnTheAirTv();
  Future<Either<Failure, List<TvEntity>>> getPopularTv();
  Future<Either<Failure, List<TvEntity>>> getTopRatedTv();
}
