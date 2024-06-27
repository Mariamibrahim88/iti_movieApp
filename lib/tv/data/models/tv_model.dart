import 'package:movie_iti/tv/domain/entities/tv_entity.dart';

class TvModel extends TvEntity {
  TvModel(
    super.backdropPath,
    super.overview,
    super.voteAverage,
    super.title,
    super.date,
    super.genreIds,
  );

  factory TvModel.fromJson(Map<String, dynamic> json) {
    return TvModel(
      json['backdrop_path'],
      json['overview'],
      json['vote_average'],
      json['original_name'],
      json['first_air_date'],
      List<int>.from(json["genre_ids"].map((e) => e)),
    );
  }
}
