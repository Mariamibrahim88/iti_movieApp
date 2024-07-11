import 'package:movie_iti/movie/domain/entities/recommendation_entity.dart';
import 'package:movie_iti/tv/domain/entities/recommendation_tv_entity.dart';

class RecommendationTvModel extends RecommendationTv {
  const RecommendationTvModel({super.backdropPath, required super.id});

  factory RecommendationTvModel.fromjson(Map<String, dynamic> json) =>
      RecommendationTvModel(
          backdropPath:
              json["backdrop_path"] ?? '/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg',
          id: json["id"]);
}
