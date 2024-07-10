import 'package:dartz/dartz.dart';
import 'package:movie_iti/tv/domain/entities/Tv_datails_entity.dart';
import 'package:movie_iti/tv/domain/entities/recommendation_tv_entity.dart';
import 'package:movie_iti/tv/domain/entities/tv_entity.dart';
import 'package:movie_iti/tv/domain/use_cases/get_recommended_use_case.dart';
import 'package:movie_iti/tv/domain/use_cases/get_tv_details_use_case.dart';

import '../../../core/error/failures.dart';

abstract class BaseTvRepository {
  Future<Either<Failure, List<TvEntity>>> getOnTheAirTv();
  Future<Either<Failure, List<TvEntity>>> getPopularTv();
  Future<Either<Failure, List<TvEntity>>> getTopRatedTv();
  Future<Either<Failure, TvDetail>> getTvDetails(
      TvDetailsParameters parameters);
  Future<Either<Failure, List<RecommendationTv>>> getRecommendation(
      RecommendationParameters parameters);
}
