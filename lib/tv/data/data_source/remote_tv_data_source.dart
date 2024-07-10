import 'package:dio/dio.dart';
import 'package:movie_iti/core/error/exceptions.dart';
import 'package:movie_iti/core/utils/functions/api_constance.dart';
import 'package:movie_iti/tv/data/data_source/base_tv_data_source.dart';
import 'package:movie_iti/tv/data/models/recommendation_tv_model.dart';
import 'package:movie_iti/tv/data/models/tv_datails_model.dart';
import 'package:movie_iti/tv/data/models/tv_model.dart';
import 'package:movie_iti/tv/domain/use_cases/get_recommended_use_case.dart';
import 'package:movie_iti/tv/domain/use_cases/get_tv_details_use_case.dart';

import '../../../core/utils/functions/error_message_model.dart';

class RemoteTvDataSource extends BaseTvDataSource {
  @override
  Future<List<TvModel>> getOnTheAirTv() async {
    final response = await Dio().get(ApiConstance.onTheAirTvPath);
    if (response.statusCode == 200) {
      return List<TvModel>.from((response.data["results"] as List).map(
        (e) => TvModel.fromJson(e),
      ));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<TvModel>> getPopularTv() async {
    final response = await Dio().get(ApiConstance.popularTvPath);
    if (response.statusCode == 200) {
      return List<TvModel>.from((response.data["results"] as List).map(
        (e) => TvModel.fromJson(e),
      ));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<TvModel>> getTopRatedTv() async {
    final response = await Dio().get(ApiConstance.topRatedTvPath);
    if (response.statusCode == 200) {
      return List<TvModel>.from((response.data["results"] as List).map(
        (e) => TvModel.fromJson(e),
      ));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<TvDetailsModel> getTvDetails(TvDetailsParameters parameters) async {
    final response =
        await Dio().get(ApiConstance.TvDetailsPath(parameters.TvId));

    if (response.statusCode == 200) {
      return TvDetailsModel.fromjson(response.data);
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<RecommendationTvModel>> getRecommendation(
      RecommendationParameters parameters) async {
    final response =
        await Dio().get(ApiConstance.recommendatiobnTvPath(parameters.id));

    if (response.statusCode == 200) {
      return List<RecommendationTvModel>.from(
          (response.data["results"] as List).map(
        (e) => RecommendationTvModel.fromjson(e),
      ));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
