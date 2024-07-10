import 'package:movie_iti/tv/data/models/recommendation_tv_model.dart';
import 'package:movie_iti/tv/data/models/tv_datails_model.dart';
import 'package:movie_iti/tv/data/models/tv_model.dart';
import 'package:movie_iti/tv/domain/entities/Tv_datails_entity.dart';
import 'package:movie_iti/tv/domain/entities/recommendation_tv_entity.dart';
import 'package:movie_iti/tv/domain/use_cases/get_recommended_use_case.dart';
import 'package:movie_iti/tv/domain/use_cases/get_tv_details_use_case.dart';

abstract class BaseTvDataSource {
  Future<List<TvModel>> getOnTheAirTv();
  Future<List<TvModel>> getPopularTv();
  Future<List<TvModel>> getTopRatedTv();
  Future<TvDetailsModel> getTvDetails(TvDetailsParameters parameters);
  Future<List<RecommendationTvModel>> getRecommendation(
      RecommendationParameters parameters);
}
