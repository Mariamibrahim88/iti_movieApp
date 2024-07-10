import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_iti/core/error/failures.dart';
import 'package:movie_iti/core/utils/use_case/base_use_case.dart';
import 'package:movie_iti/tv/domain/entities/recommendation_tv_entity.dart';
import 'package:movie_iti/tv/domain/repositories/base_tv_repository.dart';

class GetRecommendationUsecase
    extends BaseUsecase<List<RecommendationTv>, RecommendationParameters> {
  final BaseTvRepository baseTvRepository;
  GetRecommendationUsecase(this.baseTvRepository);
  @override
  Future<Either<Failure, List<RecommendationTv>>> call(
      RecommendationParameters parameters) async {
    return await baseTvRepository.getRecommendation(parameters);
  }
}

class RecommendationParameters extends Equatable {
  final int id;

  const RecommendationParameters(this.id);

  @override
  List<Object?> get props => [id];
}
