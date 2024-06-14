import 'package:movie_iti/tv/domain/entities/tv_entity.dart';
import 'package:movie_iti/tv/domain/repositories/base_tv_repository.dart';

class PopularTvUseCase {
  final BaseTvRepository baseTvRepository;

  PopularTvUseCase(this.baseTvRepository);

  Future<List<TvEntity>> execute() async {
    return await baseTvRepository.getPopularTv();
  }
}
