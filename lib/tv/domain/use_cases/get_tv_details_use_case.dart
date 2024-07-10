import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_iti/core/error/failures.dart';
import 'package:movie_iti/core/utils/use_case/base_use_case.dart';
import 'package:movie_iti/tv/domain/entities/Tv_datails_entity.dart';
import 'package:movie_iti/tv/domain/repositories/base_tv_repository.dart';

class GetTvDetailsUsecase extends BaseUsecase<TvDetail, TvDetailsParameters> {
  final BaseTvRepository baseTvRepository;
  GetTvDetailsUsecase(this.baseTvRepository);
  @override
  Future<Either<Failure, TvDetail>> call(TvDetailsParameters parameters) async {
    return await baseTvRepository.getTvDetails(parameters);
  }
}

class TvDetailsParameters extends Equatable {
  final int TvId;
  const TvDetailsParameters({required this.TvId});

  @override
  // TODO: implement props
  List<Object?> get props => [TvId];
}
