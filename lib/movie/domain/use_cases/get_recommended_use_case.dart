import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_iti/core/error/failures.dart';
import 'package:movie_iti/core/utils/use_case/base_use_case.dart';
import 'package:movie_iti/movie/domain/entities/recommendation_entity.dart';
import 'package:movie_iti/movie/domain/repositories/base_movie_repository.dart';

class GetRecommendationUsecase
    extends BaseUsecase<List<Recommendation>, RecommendationParameters> {
  final BaseMoviesRepository baseMoviesRepository;
  GetRecommendationUsecase(this.baseMoviesRepository);
  @override
  Future<Either<Failure, List<Recommendation>>> call(
      RecommendationParameters parameters) async {
    return await baseMoviesRepository.getRecommendation(parameters);
  }
}

class RecommendationParameters extends Equatable {
  final int id;

  const RecommendationParameters(this.id);

  @override
  List<Object?> get props => [id];
}
