import 'package:equatable/equatable.dart';

import 'package:movie_iti/tv/data/models/genre_Tv_model.dart';

class TvDetail extends Equatable {
  final String backdropPath;
  final List<GenresTvModel> genres;
  final dynamic id;
  final dynamic overview;
  final dynamic releaseDate;
  final dynamic? runtime;
  final dynamic title;
  final dynamic voteAverage;

  const TvDetail(
      {required this.backdropPath,
      required this.id,
      required this.overview,
      required this.releaseDate,
      required this.runtime,
      required this.title,
      required this.voteAverage,
      required this.genres});

  @override
  List<Object> get props => [
        backdropPath,
        id,
        overview,
        releaseDate,
        runtime!,
        title,
        voteAverage,
        genres
      ];
}
