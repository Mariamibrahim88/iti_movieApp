import 'package:dio/dio.dart';
import 'package:movie_iti/core/error/exceptions.dart';
import 'package:movie_iti/core/utils/api_constance.dart';
import 'package:movie_iti/tv/data/data_source/base_tv_data_source.dart';
import 'package:movie_iti/tv/data/models/tv_model.dart';

import '../../../core/utils/error_message_model.dart';

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
}
