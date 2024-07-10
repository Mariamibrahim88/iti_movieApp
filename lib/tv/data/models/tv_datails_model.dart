import 'package:movie_iti/tv/data/models/genre_Tv_model.dart';
import 'package:movie_iti/tv/domain/entities/Tv_datails_entity.dart';

class TvDetailsModel extends TvDetail {
  TvDetailsModel(
      {required super.backdropPath,
      required super.id,
      required super.overview,
      required super.releaseDate,
      required super.runtime,
      required super.title,
      required super.voteAverage,
      required super.genres});

  factory TvDetailsModel.fromjson(Map<String, dynamic> json) => TvDetailsModel(
        backdropPath: json["backdrop_path"] ?? '',
        id: json["id"],
        overview: json["overview"],
        releaseDate: json["release_date"],
        runtime: json["runtime"],
        title: json["title"],
        voteAverage: json["vote_average"].toDouble(),
        genres: List<GenresTvModel>.from(
            json["genres"].map((x) => GenresTvModel.fromjson(x))),
      );
}
