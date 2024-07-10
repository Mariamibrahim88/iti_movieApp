import 'package:movie_iti/movie/data/models/genre_model.dart';
import 'package:movie_iti/movie/domain/entities/movie_datails_entity.dart';

class MovieDetailsModel extends MovieDetail {
  MovieDetailsModel(
      {required super.backdropPath,
      required super.id,
      required super.overview,
      required super.releaseDate,
      required super.runtime,
      required super.title,
      required super.voteAverage,
      required super.genres});

  factory MovieDetailsModel.fromjson(Map<String, dynamic> json) =>
      MovieDetailsModel(
        backdropPath: json["backdrop_path"],
        id: json["id"],
        overview: json["overview"],
        releaseDate: json["release_date"],
        runtime: json["runtime"],
        title: json["title"],
        voteAverage: json["vote_average"].toDouble(),
        genres: List<GenresModel>.from(
            json["genres"].map((x) => GenresModel.fromjson(x))),
      );
}
