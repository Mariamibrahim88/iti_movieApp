import 'package:movie_iti/movie/domain/entities/movie_entity.dart';

class MovieModel extends Movie {
  const MovieModel(super.id, super.title, super.backdropPath, super.genreIds,
      super.overview, super.voteAverage, super.releaseDate);
  factory MovieModel.fromjson(Map<String, dynamic> json) {
    return MovieModel(
        json["id"],
        json["title"],
        json["backdrop_path"],
        List<int>.from(json["genre_ids"].map((e) => e)),
        json["overview"],
        json["vote_average"] != null ? json["vote_average"].toDouble() : 0.0,
        json["release_date"]);
  }
}
