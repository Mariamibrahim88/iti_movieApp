import 'package:movie_iti/tv/data/models/tv_model.dart';

abstract class BaseTvDataSource {
  Future<List<TvModel>> getOnTheAirTv();
  Future<List<TvModel>> getPopularTv();
  Future<List<TvModel>> getTopRatedTv();
}
