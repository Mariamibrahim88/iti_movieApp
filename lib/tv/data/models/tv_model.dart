import 'package:movie_iti/tv/domain/entities/tv_entity.dart';

class TvModel extends TvEntity {
  TvModel(
    super.id,
    super.backdropPath,
    super.overview,
    super.voteAverage,
    super.title,
    super.date,
    super.genreIds,
  );

  factory TvModel.fromJson(Map<String, dynamic> json) {
    return TvModel(
      json['backdrop_path'] ?? "",
      json['id'],
      json['overview'],
      json['vote_average'] != null ? json['vote_average'].toDouble() : 0.0,
      json['original_name'],
      json['first_air_date'],
      List<int>.from(json["genre_ids"].map((e) => e)) as dynamic,
    );
  }
}
