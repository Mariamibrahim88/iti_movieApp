import 'package:equatable/equatable.dart';

import 'package:movie_iti/tv/data/models/genre_Tv_model.dart';
import 'package:movie_iti/tv/domain/entities/genre_tv_entity.dart';

class TvDetail extends Equatable {
  final String backdropPath;
  final List<GenresTv> genres;
  final int id;
  final String overview;
  final String releaseDate;
  //final int? runtime;
  final String title;
  final double voteAverage;

  const TvDetail(
      {required this.backdropPath,
      required this.id,
      required this.overview,
      required this.releaseDate,
      //required this.runtime,
      required this.title,
      required this.voteAverage,
      required this.genres});

  @override
  List<Object> get props => [
        backdropPath,
        id,
        overview,
        releaseDate,
        //runtime!,
        title,
        voteAverage,
        genres
      ];
}
