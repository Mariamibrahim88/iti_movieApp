import 'package:movie_iti/tv/domain/entities/tv_entity.dart';

abstract class BaseTvRepository {
  Future<List<TvEntity>> getOnTheAirTv();
  Future<List<TvEntity>> getPopularTv();
  Future<List<TvEntity>> getTopRatedTv();
}
