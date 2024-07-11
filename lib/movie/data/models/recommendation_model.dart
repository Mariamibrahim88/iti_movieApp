import 'package:movie_iti/movie/domain/entities/recommendation_entity.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({super.backdropPath, required super.id});

  factory RecommendationModel.fromjson(Map<String, dynamic> json) =>
      RecommendationModel(
          backdropPath:
              json["backdrop_path"] ?? '/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg',
          id: json["id"]);
}
